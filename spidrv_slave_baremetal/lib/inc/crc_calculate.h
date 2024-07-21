/*
 * crc_calculate.h
 *
 *  Created on: 15 Tem 2024
 *      Author: samet
 */

#ifndef CRC_CALCULATE_H_
#define CRC_CALCULATE_H_

#include "stdint.h"

void crc_init(void);
void crc_deinit(void);
uint32_t crc_calculate(uint8_t buffer);

#endif /* CRC_CALCULATE_H_ */
