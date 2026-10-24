#include <avr/io.h>
#include <util/delay.h>
#define LED_PIN DDD3
int main(void) {
    DDRD |= (1 << LED_PIN);

    while (1) {
 PORTD ^= (1 << LED_PIN);
        _delay_ms(500);

    }
}
