set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR avr)

set(TC_PATH "C:/Toolchain/avr8-gnu-toolchain-win32_x86_64/bin")

set(CMAKE_C_COMPILER "${TC_PATH}/avr-gcc.exe")
set(CMAKE_CXX_COMPILER "${TC_PATH}/avr-g++.exe")

set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)