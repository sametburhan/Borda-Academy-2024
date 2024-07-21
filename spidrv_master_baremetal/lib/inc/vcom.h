/*
 * vcom.h
 *
 *  Created on: 16 Tem 2024
 *      Author: samet
 */

#ifndef VCOM_H_
#define VCOM_H_

/***************************************************************************//**
 * Initialize iostream usart
 ******************************************************************************/
void vcom_init(void);

/***************************************************************************//**
 * iostream usart ticking function
 ******************************************************************************/
void app_iostream_eusart_process_action(void);

#endif /* VCOM_H_ */
