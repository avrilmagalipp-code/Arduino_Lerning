# Arduino C Low-Learning Journey

A structured repository documenting my journey in lerning Arduino Programing using bare-metal C/C++. this project focuses on undestranding miccro controler architecture, direct registery manipulation, and efficient hardwer control without relaying heavily on high-level Arduino abstraction Libraries.

_____
## Repository Structure

- `01_bare_metal_led_blink/`-Direct port manipulation for blinking LEDs without `digitalWrite()`
- `02_timers_and_delay/`-precise timing using hardware timers instead of `delay()`
- `03_interrupts/`-Handling external and pin change interrupts.
- `04_communication_protocols/` - Bare-metal implementation of UART, SPI, and I2C protocols.
-  `05_adc_and_sensors/` - Reading analog signals directly using the internal ADC registers.
- `06_power_management/` - Utilizing sleep modes and power reduction registers for low-power optimization.

----
## 🛠️ Requirements & Setup
- **Microcontroller:** ATmega328P (Arduino Uno/Nano)
- **Toolchain/IDE:** CLion / AVR-GCC / Arduino CLI