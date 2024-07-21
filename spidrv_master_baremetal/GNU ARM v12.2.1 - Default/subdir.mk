################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c 

OBJS += \
./main.o 

C_DEPS += \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
main.o: ../main.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFR32MG24B220F1536IM48=1' '-DSL_BOARD_NAME="BRD4187C"' '-DSL_BOARD_REV="A01"' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DSL_CODE_COMPONENT_PERIPHERAL_SYSRTC=hal_sysrtc' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_master_baremetal\config" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_master_baremetal\lib\inc" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_master_baremetal\autogen" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_master_baremetal" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/Device/SiliconLabs/EFR32MG24/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//hardware/board/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/clock_manager/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/clock_manager/src" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/driver/debug/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/device_manager/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/device_init/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/emdrv/dmadrv/inc/s2_signals" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/emdrv/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/emlib/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/peripheral/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/interrupt_manager/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/interrupt_manager/inc/arm" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/iostream/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/memory_manager/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/common/toolchain/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/system/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/sleeptimer/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/emdrv/spidrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/simplicity_sdk_2//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"main.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


