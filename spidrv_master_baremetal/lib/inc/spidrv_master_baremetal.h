/***************************************************************************/ /**
                                                                               * @file
                                                                               * @brief SPI Master
                                                                               ******************************************************************************/

#ifndef SPIDRV_BAREMETAL_H
#define SPIDRV_BAREMETAL_H

#include "stdint.h"

// size of transmission and reception buffers
#define APP_BUFFER_SIZE 32

// Vcom input command "Temperature", "Humidity", "Pressure", "Data"
typedef enum
{
  TEMP = 11,
  HUM = 8,
  PRES = 8,
  DATA = 4
} COMMAND_SIZE;

// Sensor data frame
typedef struct
{
  uint8_t id;
  uint8_t flag;
  uint8_t command_size;
  char rx_buffer[APP_BUFFER_SIZE];
  char tx_buffer[APP_BUFFER_SIZE];
} Sensor_t;

/*******************************************************************************
 * Initialize functions
 ******************************************************************************/
void spidrv_app_init(void);

/*******************************************************************************
 * Ticking functions
 ******************************************************************************/
uint8_t spi_communication(Sensor_t *sensor);

void clear_ALL_sensor_buffer(Sensor_t *sensor);
void clear_TX_sensor_buffer(Sensor_t *sensor);
void clear_RX_sensor_buffer(Sensor_t *sensor);

#endif // SPIDRV_BAREMETAL_H
