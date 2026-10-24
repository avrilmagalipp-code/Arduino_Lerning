# 01 - Bare Metal LED Blink (ATmega328P / Arduino Uno)

Project dasar pemrograman bare-metal C untuk mengontrol LED eksternal pada Pin Digital 3 (PD3) menggunakan register AVR tanpa pustaka High-Level Arduino.

---

## 1. Konsep Dasar Register

Dalam mikrokontroler ATmega328P, pengaturan pin dilakukan melalui manipulasi bit pada register 8-bit.

* **`DDRD` (Data Direction Register D)**
    * Menentukan mode/arah pin pada Port D (Pin D0 - D7).
    * `0` = Mode **INPUT**
    * `1` = Mode **OUTPUT** (Ekuivalen dengan `pinMode(3, OUTPUT)`)
* **`PORTD` (Port D Data Register)**
    * Menentukan status tegangan/sinyal pin pada Port D.
    * `0` = Sinyal **LOW / 0V** (LED Mati)
    * `1` = Sinyal **HIGH / 5V** (LED Nyala) (Ekuivalen dengan `digitalWrite(3, HIGH)`)

---

## 2. Operasi Bitwise & Bitmasking

Untuk menargetkan pin tertentu tanpa mengubah nilai pin lainnya, digunakan **Bitmask** `(1 << LED_PIN)` dengan konstanta `DDD3 = 3` (Pin D3).

* **Shift Left (`1 << 3`)**: Menggeser biner `00000001` sebanyak 3 bit ke kiri menjadi `00001000`.
* **Bitwise OR Assignment (`|=`)**: Digunakan untuk menetapkan bit target menjadi `1` (HIGH/OUTPUT).
  ```c
  DDRD |= (1 << DDD3);  // Set Pin D3 sebagai Output