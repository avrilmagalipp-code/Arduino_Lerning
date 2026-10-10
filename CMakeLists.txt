cmake_minimum_required(VERSION 4.3)
project(Arduino_learning C)

set(CMAKE_C_STANDARD 11)

add_executable(Arduino_learning
        01_bare_metal_led_blink/main.c)
