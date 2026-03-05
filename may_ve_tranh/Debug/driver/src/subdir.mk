################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../driver/src/adc.c \
../driver/src/gpio.c \
../driver/src/i2c.c \
../driver/src/otg.c \
../driver/src/rcc.c \
../driver/src/spi.c \
../driver/src/timer.c \
../driver/src/uart.c 

OBJS += \
./driver/src/adc.o \
./driver/src/gpio.o \
./driver/src/i2c.o \
./driver/src/otg.o \
./driver/src/rcc.o \
./driver/src/spi.o \
./driver/src/timer.o \
./driver/src/uart.o 

C_DEPS += \
./driver/src/adc.d \
./driver/src/gpio.d \
./driver/src/i2c.d \
./driver/src/otg.d \
./driver/src/rcc.d \
./driver/src/spi.d \
./driver/src/timer.d \
./driver/src/uart.d 


# Each subdirectory must supply rules for building sources it contributes
driver/src/%.o driver/src/%.su driver/src/%.cyclo: ../driver/src/%.c driver/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"D:/khoahocstm32/may_ve_tranh/driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-driver-2f-src

clean-driver-2f-src:
	-$(RM) ./driver/src/adc.cyclo ./driver/src/adc.d ./driver/src/adc.o ./driver/src/adc.su ./driver/src/gpio.cyclo ./driver/src/gpio.d ./driver/src/gpio.o ./driver/src/gpio.su ./driver/src/i2c.cyclo ./driver/src/i2c.d ./driver/src/i2c.o ./driver/src/i2c.su ./driver/src/otg.cyclo ./driver/src/otg.d ./driver/src/otg.o ./driver/src/otg.su ./driver/src/rcc.cyclo ./driver/src/rcc.d ./driver/src/rcc.o ./driver/src/rcc.su ./driver/src/spi.cyclo ./driver/src/spi.d ./driver/src/spi.o ./driver/src/spi.su ./driver/src/timer.cyclo ./driver/src/timer.d ./driver/src/timer.o ./driver/src/timer.su ./driver/src/uart.cyclo ./driver/src/uart.d ./driver/src/uart.o ./driver/src/uart.su

.PHONY: clean-driver-2f-src

