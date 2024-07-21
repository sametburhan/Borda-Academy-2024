################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../autogen/sl_device_init_clocks.c \
../autogen/sl_event_handler.c \
../autogen/sl_iostream_handles.c \
../autogen/sl_spidrv_init.c 

OBJS += \
./autogen/sl_device_init_clocks.o \
./autogen/sl_event_handler.o \
./autogen/sl_iostream_handles.o \
./autogen/sl_spidrv_init.o 

C_DEPS += \
./autogen/sl_device_init_clocks.d \
./autogen/sl_event_handler.d \
./autogen/sl_iostream_handles.d \
./autogen/sl_spidrv_init.d 


# Each subdirectory must supply rules for building sources it contributes
autogen/sl_device_init_clocks.o: ../autogen/sl_device_init_clocks.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG13P632F512GM48=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\lib\inc" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\config" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\autogen" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/Device/SiliconLabs/EFR32BG13P/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/CMSIS/Core/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/driver/debug/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/device_init/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/dmadrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emlib/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/iostream/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/toolchain/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/system/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/sleeptimer/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/spidrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/uartdrv/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_device_init_clocks.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_event_handler.o: ../autogen/sl_event_handler.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG13P632F512GM48=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\lib\inc" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\config" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\autogen" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/Device/SiliconLabs/EFR32BG13P/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/CMSIS/Core/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/driver/debug/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/device_init/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/dmadrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emlib/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/iostream/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/toolchain/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/system/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/sleeptimer/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/spidrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/uartdrv/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_event_handler.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_iostream_handles.o: ../autogen/sl_iostream_handles.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG13P632F512GM48=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\lib\inc" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\config" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\autogen" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/Device/SiliconLabs/EFR32BG13P/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/CMSIS/Core/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/driver/debug/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/device_init/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/dmadrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emlib/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/iostream/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/toolchain/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/system/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/sleeptimer/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/spidrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/uartdrv/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_iostream_handles.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_spidrv_init.o: ../autogen/sl_spidrv_init.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG13P632F512GM48=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\lib\inc" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\config" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\autogen" -I"C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/Device/SiliconLabs/EFR32BG13P/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/CMSIS/Core/Include" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/driver/debug/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/device_init/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/dmadrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/common/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emlib/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/iostream/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//util/third_party/printf/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/common/toolchain/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/system/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/service/sleeptimer/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/spidrv/inc" -I"C:/Users/samet/SimplicityStudio/SDKs/v4.4.0//platform/emdrv/uartdrv/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_spidrv_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


