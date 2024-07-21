################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/src/app.c \
../lib/src/crc_calculate.c \
../lib/src/spidrv_slave_baremetal.c 

OBJS += \
./lib/src/app.o \
./lib/src/crc_calculate.o \
./lib/src/spidrv_slave_baremetal.o 

C_DEPS += \
./lib/src/app.d \
./lib/src/crc_calculate.d \
./lib/src/spidrv_slave_baremetal.d 


# Each subdirectory must supply rules for building sources it contributes
lib/src/app.o: ../lib/src/app.c lib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG13P632F512GM48=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\lib\inc" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\config" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\autogen" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/Device/SiliconLabs/EFR32BG13P/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/CMSIS/Core/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/driver/debug/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/device_init/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/dmadrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emlib/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/iostream/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/toolchain/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/system/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/sleeptimer/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/spidrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/uartdrv/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"lib/src/app.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/src/crc_calculate.o: ../lib/src/crc_calculate.c lib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG13P632F512GM48=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\lib\inc" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\config" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\autogen" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/Device/SiliconLabs/EFR32BG13P/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/CMSIS/Core/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/driver/debug/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/device_init/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/dmadrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emlib/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/iostream/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/toolchain/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/system/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/sleeptimer/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/spidrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/uartdrv/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"lib/src/crc_calculate.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/src/spidrv_slave_baremetal.o: ../lib/src/spidrv_slave_baremetal.c lib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG13P632F512GM48=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\lib\inc" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\config" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\autogen" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/Device/SiliconLabs/EFR32BG13P/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/CMSIS/Core/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/driver/debug/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/device_init/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/dmadrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emlib/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/iostream/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/toolchain/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/system/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/sleeptimer/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/spidrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/uartdrv/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"lib/src/spidrv_slave_baremetal.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


