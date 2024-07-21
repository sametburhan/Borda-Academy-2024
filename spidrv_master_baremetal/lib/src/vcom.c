/*
 * vcom.c
 *
 *  Created on: 16 Tem 2024
 *      Author: samet
 */

/***************************************************************************//**
 * @file
 * @brief iostream usart examples functions
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

#include <stdio.h>
#include <string.h>
#include "sl_iostream.h"
#include "sl_iostream_init_instances.h"
#include "sl_iostream_handles.h"
#include "spidrv_master_baremetal.h"

/*******************************************************************************
 *******************************   DEFINES   ***********************************
 ******************************************************************************/

#ifndef BUFSIZE
#define BUFSIZE    80
#endif

/*******************************************************************************
 ***************************  LOCAL VARIABLES   ********************************
 ******************************************************************************/

Sensor_t sensor_package[4];

/* Input buffer */
static char buffer[BUFSIZE];
const char command_temp[] = "Temperature";
const char command_hum[] = "Humidity";
const char command_pres[] = "Pressure";
const char command_data[] = "Data";


/*******************************************************************************
 **************************   LOCAL FUNCTIONS   *******************************
 ******************************************************************************/

static void user_command_control(char* buffer, uint8_t len, bool *print_welcome);
static void init_sensor(void);

/***************************************************************************//**
 * Initialize example.
 ******************************************************************************/

void vcom_init(void)
{
  /* Prevent buffering of output/input.*/
#if !defined(__CROSSWORKS_ARM) && defined(__GNUC__)
  setvbuf(stdout, NULL, _IONBF, 0);   /*Set unbuffered mode for stdout (newlib)*/
  setvbuf(stdin, NULL, _IONBF, 0);   /*Set unbuffered mode for stdin (newlib)*/
#endif

  /* Output on vcom usart instance */
  const char str1[] = "***SPI CRC Example***\r\n\r\n";
  sl_iostream_write(sl_iostream_vcom_handle, str1, strlen(str1));

  /* Setting default stream */
  sl_iostream_set_default(sl_iostream_vcom_handle);
  const char str2[] = "*Wireless Kit & Thunderboard Sense*\r\n";
  sl_iostream_write(SL_IOSTREAM_STDOUT, str2, strlen(str2));

  printf("Input sensor instruction: ('Temperature', 'Pressure', 'Humidity', 'Data')");
}

/***************************************************************************//**
 * Example ticking function.
 ******************************************************************************/

void app_iostream_eusart_process_action(void)
{
  int8_t c = 0;
  static bool completed = false;
  static uint8_t index = 0;
  static bool print_welcome = true;

  if (print_welcome) {
    printf("\r\n> ");
    print_welcome = false;
  }

  /* Retrieve characters, print local echo and full line back */
  c = getchar();
  if (c > 0) {
    if (c == '\r' || c == '\n') {
        if(completed){
          user_command_control(buffer, index, &print_welcome);
          completed = false;
        }
      buffer[index] = '\0';
      index = 0;
    }
    else {
      if (index < BUFSIZE - 1) {
        buffer[index] = c;
        index++;
        completed = true;
      }
    }
  }
}

void init_sensor(void){
  sensor_package[0].command_size = TEMP;
  sensor_package[0].flag = 0;
  sensor_package[0].id = 0x1;
  //temp_sensor.tx_buffer =
  /**
   *
   */
  sensor_package[1].command_size = HUM;
  sensor_package[1].flag = 0;
  sensor_package[1].id = 0x2;
  /**
   *
   */
  sensor_package[2].command_size = PRES;
  sensor_package[2].flag = 0;
  sensor_package[2].id = 0x3;
  /**
   *
   */
  sensor_package[3].command_size = DATA;
  sensor_package[3].flag = 0;
  sensor_package[3].id = 0x4;
}

void user_command_control(char* buffer, uint8_t len, bool *print_welcome){
  init_sensor();
  volatile uint8_t control_number = 0;
  for(int i = 0;i < len;i++){
      if(buffer[i] == command_temp[i]){
          control_number++;
          sensor_package[0].flag = true;
      }else if(buffer[i] == command_hum[i]){
          control_number++;
          sensor_package[1].flag = true;
      }else if(buffer[i] == command_pres[i]){
          control_number++;
          sensor_package[2].flag = true;
      }else if(buffer[i] == command_data[i]){
          control_number++;
          sensor_package[3].flag = true;
          *print_welcome = true;
      }else{
          break;
      }
  }

  switch(control_number){
    case TEMP:
      if(1 == sensor_package[0].flag){
          printf("%s :",command_temp);
          spi_communication(&sensor_package[0]);
      }
      break;
    case HUM:
      if(1 == sensor_package[1].flag){
          printf("%s :",command_hum);
          spi_communication(&sensor_package[1]);
      }else if(1 == sensor_package[2].flag){
          printf("%s :",command_pres);
          spi_communication(&sensor_package[2]);
      }
      break;
    case DATA:
      spi_communication(&sensor_package[3]);
      break;
    default:
      printf("Undefined command\n\r");
      break;
  }
}


