#include "driver/bat.hpp"
#include "driver/display.hpp"
#include "driver/input.hpp"
#include "sm.hpp"

#include <chip/gpio.hpp>
#include <chip/interrupts.hpp>
#include <chip/rtc.hpp>
#include <chip/spi.hpp>
#include <chip/syscfg.hpp>

void SystemInit() {
	SYSCFG::enable();
	RTC::enable();
	SPI1::enable();
	GPIOA::enable();
}

int main() {
	if (!RTC::is_initialized()) {
		aww::sm::set_state(aww::sm::STATE::EDIT_HRS);
		RTC::set_time_and_date(0, 0, 0, 1, 1, 0x21);
	}

	// RTC Wakup Timer, 0.125sec
	RTC::setup_wakeup_timer(255, 0);

	battery::setup();
	display::setup();
	input::setup();

	asm("CPSIE I");
	RTC::isr::WUTF::clear();

	while (true) {
		asm("nop");
	}
}
