/*
 * crc_calculate.c
 *
 *  Created on: 15 Tem 2024
 *      Author: samet
 */
#include "em_gpcrc.h"
#include "em_cmu.h"

/**
 * @brief: CRC32 Calculation functions
 * @cite: https://docs.silabs.com/gecko-platform/5.0.0/platform-emlib-efr32xg24/gpcrc
 */
void crc_init(void)
{
  CMU_ClockEnable(cmuClock_GPCRC, true);
  /* Initialize GPCRC, 32-bit fixed polynomial is default */
  GPCRC_Init_TypeDef init = GPCRC_INIT_DEFAULT;
  init.initValue = 0xFFFFFFFF; // Standard CRC-32 init value
  GPCRC_Init(GPCRC, &init);

  GPCRC_Start(GPCRC);
  GPCRC_Enable(GPCRC, true);
}

void crc_deinit(void)
{
  GPCRC_Reset(GPCRC);
  GPCRC_Enable(GPCRC, false);
  CMU_ClockEnable(cmuClock_GPCRC, false);
}

uint32_t crc_calculate(uint8_t buffer)
{
  uint32_t crc_value;
  crc_init();
  GPCRC_InputU8(GPCRC, (uint8_t)buffer);
  /* According to the CRC-32 specification, the end result should be inverted */
  crc_value = ~GPCRC_DataRead(GPCRC);
  crc_deinit();
  return crc_value;
}
