#include <chip/gpio.h>
#include <chip/rcc.h>

template<>
void GPIOA::enable() {
	RCC::IOPENR::set_bit(0);
}