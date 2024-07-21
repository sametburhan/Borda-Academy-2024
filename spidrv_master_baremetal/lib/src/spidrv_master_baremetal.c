/***************************************************************************//**
 * @file
 * @brief spidrv master micriumos examples functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/
#include <string.h>
#include <stdio.h>
#include "spidrv_master_baremetal.h"
#include "spidrv.h"
#include "sl_spidrv_instances.h"
#include "sl_sleeptimer.h"
#include "vcom.h"
#include "crc_calculate.h"
/*******************************************************************************
 *******************************   DEFINES   ***********************************
 ******************************************************************************/

// use SPI handle for EXP header (configured in project settings)
#define SPI_HANDLE                  sl_spidrv_exp_handle

/*******************************************************************************
 ***************************  LOCAL VARIABLES   ********************************
 ******************************************************************************/

// Flag to signal that transfer is complete
static volatile bool transfer_complete = false;

static const char temp_message[] = "<?TMP><?CRC>";
static const char hum_message[] = "<?HUM><?CRC>";
static const char pres_message[] = "<?PRS><?CRC>";
static const char data_message[] = "<?SNS:INIT><?CRC>";

/*******************************************************************************
 *********************   LOCAL FUNCTION PROTOTYPES   ***************************
 ******************************************************************************/

// Callback fired when data is transmitted
void transfer_callback(SPIDRV_HandleData_t *handle,
                       Ecode_t transfer_status,
                       int items_transferred)
{
  (void)&handle;
  (void)items_transferred;

  // Post semaphore to signal to application
  // task that transfer is successful
  if (transfer_status == ECODE_EMDRV_SPIDRV_OK) {
    transfer_complete = true;
  }
}

static void spi_transmit_code(Sensor_t* sensor);
static uint32_t crc_convert_to_int(char * rx_buffer);
static uint32_t data_convert_to_int(char * rx_buffer);

/*******************************************************************************
 **************************   GLOBAL FUNCTIONS   *******************************
 ******************************************************************************/

/*******************************************************************************
 * Initialize example.
 ******************************************************************************/

void spidrv_app_init(void)
{
  // SPI init
}

/***************************************************************************//**
 * Ticking function
 ******************************************************************************/
uint8_t spi_communication(Sensor_t* sensor){
  Ecode_t ecode;

  transfer_complete = false;
  spi_transmit_code(sensor);

  // Non-blocking data transfer to slave. When complete, rx buffer
  // will be filled.
  ecode = SPIDRV_MTransfer(SPI_HANDLE, sensor->tx_buffer, sensor->rx_buffer, APP_BUFFER_SIZE, transfer_callback);
  EFM_ASSERT(ecode == ECODE_OK);

  // wait for transfer to complete
  while (!transfer_complete) ;

  if(0x4 == sensor->id){
      printf("%s\r\n", sensor->rx_buffer);
      uint32_t received_crc = crc_convert_to_int(&(sensor->rx_buffer[0]));
      uint32_t calculated_crc = crc_calculate(data_convert_to_int(&(sensor->rx_buffer[0])));
      printf("Calculated crc: %u, Checksum: %s",(unsigned int) calculated_crc, (calculated_crc == received_crc) ? "True" : "False");
  }
  clear_ALL_sensor_buffer(sensor);

  return 0;
}

uint32_t data_convert_to_int(char * rx_buffer){
    uint8_t count = 0;
    char data[10] = {0};
    for(int i = 0;i < APP_BUFFER_SIZE; i++){
          if('>' != rx_buffer[i]){
              count++;
          }else {
              break;
          }
      }
      for(int i = 5; i < count; i++){
        if('>' != rx_buffer[i]){
            data[i-5] = rx_buffer[i];
        }else {
            break;
        }
      }
  return strtoul(data,NULL,10);
}

uint32_t crc_convert_to_int(char * rx_buffer){
  uint8_t count = 0;
  char crc[10] = {0};
  for(int i = 0;i < APP_BUFFER_SIZE; i++){
      if('>' != rx_buffer[i]){
          count++;
      }else {
          break;
      }
  }
  for(int i = count+6;i < APP_BUFFER_SIZE; i++){
    if('>' != rx_buffer[i]){
        crc[i-(count+6)] = rx_buffer[i];
    }else {
        break;
    }
  }
  return strtoul(crc,NULL,10);
}

void clear_ALL_sensor_buffer(Sensor_t* sensor){
  clear_RX_sensor_buffer(sensor);
  clear_TX_sensor_buffer(sensor);
}

void clear_RX_sensor_buffer(Sensor_t* sensor){
  for(int i = 0;i< 32;i++){
      sensor->rx_buffer[i] = '\0';
  }
}

void clear_TX_sensor_buffer(Sensor_t* sensor){
  for(int i = 0;i< 32;i++){
      sensor->tx_buffer[i] = '\0';
  }
}

void spi_transmit_code(Sensor_t* sensor){
  if(1 == sensor->id){
    for(int i = 0;i < 12; i++){
        sensor->tx_buffer[i] = temp_message[i];
    }
  }else if(2 == sensor->id){
      for(int i = 0;i < 12; i++){
          sensor->tx_buffer[i] = hum_message[i];
      }
  }else if(3 == sensor->id){
      for(int i = 0;i < 12; i++){
          sensor->tx_buffer[i] = pres_message[i];
      }
  }else{
      for(int i = 0;i < 12; i++){
          sensor->tx_buffer[i] = data_message[i];
      }
  }
}
