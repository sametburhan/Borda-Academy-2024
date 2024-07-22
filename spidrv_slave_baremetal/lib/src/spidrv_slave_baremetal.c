/***************************************************************************/ /**
                                                                               * @file
                                                                               * @brief SPI Slave
                                                                               ******************************************************************************/
#include <string.h>
#include <stdio.h>
#include "spidrv_slave_baremetal.h"
#include "spidrv.h"
#include "sl_spidrv_instances.h"
#include "crc_calculate.h"

/*******************************************************************************
 *******************************   DEFINES   ***********************************
 ******************************************************************************/
// use SPI handle for EXP header (configured in project settings)
#define SPI_HANDLE sl_spidrv_usart_spi_handle

// size of transmission and reception buffers
#define APP_BUFFER_SIZE 32

/*******************************************************************************
 ***************************  LOCAL VARIABLES   ********************************
 ******************************************************************************/
// Flag to signal that transfer is complete
static volatile bool transfer_complete = false;

// Data counter
static const int temp = 35;
static const int hum = 26;
static const int pres = 1018;

// Struct of SPI communication transmit and receive frame
typedef struct
{
  char rx_buffer[APP_BUFFER_SIZE];
  char tx_buffer[APP_BUFFER_SIZE];
} Frame_t;

/*******************************************************************************
 *********************   LOCAL FUNCTION PROTOTYPES   ***************************
 ******************************************************************************/
// Callback fired when transfer is complete
static void transfer_callback(SPIDRV_HandleData_t *handle,
                              Ecode_t transfer_status,
                              int items_transferred)
{
  (void)&handle;
  (void)items_transferred;

  // Post semaphore to signal to application
  // task that transfer is successful
  if (transfer_status == ECODE_EMDRV_SPIDRV_OK)
  {
    transfer_complete = true;
  }
}

/**
 * Local Functions
 * @brief: Clear SPI communication frame. Only receive, only transmit or both of them.
 * @param: spi_frame
 */

static void clear_RX_buffer(Frame_t *spi_frame)
{
  for (int i = 0; i < 32; i++)
  {
    spi_frame->rx_buffer[i] = '\0';
  }
}

static void clear_TX_buffer(Frame_t *spi_frame)
{
  for (int i = 0; i < 32; i++)
  {
    spi_frame->tx_buffer[i] = '\0';
  }
}

static void clear_ALL_buffer(Frame_t *spi_frame) __attribute__((unused)); // Warning removed

static void clear_ALL_buffer(Frame_t *spi_frame)
{
  clear_RX_buffer(spi_frame);
  clear_TX_buffer(spi_frame);
}

/*******************************************************************************
 **************************   GLOBAL FUNCTIONS   *******************************
 ******************************************************************************/

/*******************************************************************************
 * Initialize functions
 ******************************************************************************/
void spidrv_app_init(void)
{
  // SPI init
}

/*******************************************************************************
 * Ticking functions
 ******************************************************************************/
void spidrv_app_process_action(void)
{
  Frame_t spi_frame;
  Ecode_t ecode;

  // In the first loop, RX buffer is cleared to prevent the warning.
  static bool first_loop_flag = true;

  if (first_loop_flag)
  {
    clear_RX_buffer(&spi_frame);
    first_loop_flag = false;
  }

  char *ptr = NULL;
  // unsigned int crc_value = 0x84B12BAE;

  if (spi_frame.rx_buffer[2] == 'T')
  {
    sprintf(spi_frame.tx_buffer, "<TMP:%d><CRC:%u>", temp, (unsigned int)crc_calculate(temp));
  }
  else if (spi_frame.rx_buffer[2] == 'H')
  {
    sprintf(spi_frame.tx_buffer, "<HUM:%d><CRC:%u>", hum, (unsigned int)crc_calculate(hum));
  }
  else if (spi_frame.rx_buffer[2] == 'P')
  {
    sprintf(spi_frame.tx_buffer, "<PRS:%d><CRC:%u>", pres, (unsigned int)crc_calculate(pres));
  }
  else
  {
    sprintf(spi_frame.tx_buffer, "<?SNS:INIT><?CRC>");
  }

  ptr = &spi_frame.tx_buffer[0];
  // send a string that includes an incrementing counter
  transfer_complete = false;

  // Non-blocking data transfer to master. When complete, rx buffer
  // will be filled.
  ecode = SPIDRV_STransfer(SPI_HANDLE, ptr, spi_frame.rx_buffer, APP_BUFFER_SIZE, transfer_callback, 0);
  EFM_ASSERT(ecode == ECODE_OK);

  // wait for transfer to complete
  while (!transfer_complete)
    ;

  clear_TX_buffer(&spi_frame);
}
