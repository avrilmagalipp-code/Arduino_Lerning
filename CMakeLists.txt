cmake_minimum_required(VERSION 4.3)
project(Arduino_learning C)

set(MCU atmega328p)
set(F_CPU 16000000UL)

add_compile_definitions(__AVR_ATmega328P__)
add_compile_options(-mmcu=${MCU})
set(CMAKE_C_STANDARD 11)

add_executable(Arduino_learning
        01_bare_metal_led_blink/main.c
)

# Gunakan full path untuk avr-objcopy
add_custom_command(
        TARGET Arduino_learning POST_BUILD
        COMMAND C:/Toolchain/avr8-gnu-toolchain-win32_x86_64/bin/avr-objcopy.exe -O ihex -R .eeprom $<TARGET_FILE:Arduino_learning> ${CMAKE_CURRENT_BINARY_DIR}/Arduino_learning.hex
        COMMENT "Generating Intel Hex file..."
)

set(PORT COM3)

add_custom_target(upload
        COMMAND C:/Toolchain/avr8-gnu-toolchain-win32_x86_64/bin/avrdude.exe
        -c arduino -p ${MCU} -P ${PORT} -b 115200
        -U flash:w:${CMAKE_CURRENT_BINARY_DIR}/Arduino_learning.hex:i
        DEPENDS Arduino_learning
        COMMENT "Uploading to Arduino..."
)