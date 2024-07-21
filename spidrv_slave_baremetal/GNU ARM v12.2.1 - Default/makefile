################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include lib/src/subdir.mk
-include gecko_sdk_4.4.0/util/third_party/printf/src/subdir.mk
-include gecko_sdk_4.4.0/util/third_party/printf/subdir.mk
-include gecko_sdk_4.4.0/platform/service/system/src/subdir.mk
-include gecko_sdk_4.4.0/platform/service/sleeptimer/src/subdir.mk
-include gecko_sdk_4.4.0/platform/service/iostream/src/subdir.mk
-include gecko_sdk_4.4.0/platform/service/device_init/src/subdir.mk
-include gecko_sdk_4.4.0/platform/emlib/src/subdir.mk
-include gecko_sdk_4.4.0/platform/emdrv/uartdrv/src/subdir.mk
-include gecko_sdk_4.4.0/platform/emdrv/spidrv/src/subdir.mk
-include gecko_sdk_4.4.0/platform/emdrv/gpiointerrupt/src/subdir.mk
-include gecko_sdk_4.4.0/platform/emdrv/dmadrv/src/subdir.mk
-include gecko_sdk_4.4.0/platform/driver/debug/src/subdir.mk
-include gecko_sdk_4.4.0/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.4.0/platform/common/src/subdir.mk
-include gecko_sdk_4.4.0/platform/Device/SiliconLabs/EFR32BG13P/Source/subdir.mk
-include autogen/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := spidrv_slave_baremetal
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: spidrv_slave_baremetal.axf

# Tool invocations
spidrv_slave_baremetal.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "C:\Users\samet\SimplicityStudio\v5_workspace\spidrv_slave_baremetal\autogen\linkerfile.ld" -Wl,--no-warn-rwx-segments -Xlinker --gc-sections -Xlinker -Map="spidrv_slave_baremetal.map" -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -o spidrv_slave_baremetal.axf -Wl,--start-group "./autogen/sl_device_init_clocks.o" "./autogen/sl_event_handler.o" "./autogen/sl_iostream_handles.o" "./autogen/sl_spidrv_init.o" "./gecko_sdk_4.4.0/platform/Device/SiliconLabs/EFR32BG13P/Source/startup_efr32bg13p.o" "./gecko_sdk_4.4.0/platform/Device/SiliconLabs/EFR32BG13P/Source/system_efr32bg13p.o" "./gecko_sdk_4.4.0/platform/common/src/sl_assert.o" "./gecko_sdk_4.4.0/platform/common/src/sl_slist.o" "./gecko_sdk_4.4.0/platform/common/src/sl_syscalls.o" "./gecko_sdk_4.4.0/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.4.0/platform/driver/debug/src/sl_debug_swo.o" "./gecko_sdk_4.4.0/platform/emdrv/dmadrv/src/dmadrv.o" "./gecko_sdk_4.4.0/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o" "./gecko_sdk_4.4.0/platform/emdrv/spidrv/src/spidrv.o" "./gecko_sdk_4.4.0/platform/emdrv/uartdrv/src/uartdrv.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_core.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_dbg.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_emu.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_gpcrc.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_ldma.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_leuart.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_msc.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_rtcc.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_system.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_timer.o" "./gecko_sdk_4.4.0/platform/emlib/src/em_usart.o" "./gecko_sdk_4.4.0/platform/service/device_init/src/sl_device_init_dcdc_s1.o" "./gecko_sdk_4.4.0/platform/service/device_init/src/sl_device_init_emu_s1.o" "./gecko_sdk_4.4.0/platform/service/device_init/src/sl_device_init_nvic.o" "./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream.o" "./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_debug.o" "./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_retarget_stdio.o" "./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_stdlib_config.o" "./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_swo_itm_8.o" "./gecko_sdk_4.4.0/platform/service/sleeptimer/src/sl_sleeptimer.o" "./gecko_sdk_4.4.0/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o" "./gecko_sdk_4.4.0/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o" "./gecko_sdk_4.4.0/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o" "./gecko_sdk_4.4.0/platform/service/system/src/sl_system_init.o" "./gecko_sdk_4.4.0/platform/service/system/src/sl_system_process_action.o" "./gecko_sdk_4.4.0/util/third_party/printf/printf.o" "./gecko_sdk_4.4.0/util/third_party/printf/src/iostream_printf.o" "./lib/src/app.o" "./lib/src/crc_calculate.o" "./lib/src/spidrv_slave_baremetal.o" "./main.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building out file: spidrv_slave_baremetal.out'
	arm-none-eabi-objcopy "spidrv_slave_baremetal.axf" "spidrv_slave_baremetal.out"
	@echo ' '

	@echo 'Building hex file: spidrv_slave_baremetal.hex'
	arm-none-eabi-objcopy -O ihex "spidrv_slave_baremetal.axf" "spidrv_slave_baremetal.hex"
	@echo ' '

	@echo 'Building bin file: spidrv_slave_baremetal.bin'
	arm-none-eabi-objcopy -O binary "spidrv_slave_baremetal.axf" "spidrv_slave_baremetal.bin"
	@echo ' '

	@echo 'Building s37 file: spidrv_slave_baremetal.s37'
	arm-none-eabi-objcopy -O srec "spidrv_slave_baremetal.axf" "spidrv_slave_baremetal.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "spidrv_slave_baremetal.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) spidrv_slave_baremetal.axf
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets
