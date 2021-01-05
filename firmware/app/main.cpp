#include "display.h"

#include <chip/exti.h>
#include <chip/interrupts.h>
#include <chip/lptim.h>
#include <chip/nvic.h>
#include <chip/pwr.h>
#include <chip/rcc.h>
#include <chip/rtc.h>
#include <chip/spi.h>
#include <chip/syscfg.h>
#include <util/pin.h>

using sw_time = pin<GPIOA, 0>;
using sw_date = pin<GPIOA, 10>;

namespace {
	constexpr uint32_t DP2 = 1 << 31;
	bool toggle			   = false;

	bool both = false;
	bool up = false, down = false;
	bool both_up = false, both_down = false;
}

enum class STATE { SETUP_HRS, SETUP_MINS, RUNNING };

STATE state = STATE::RUNNING;

void RTC_IRQHandler() {
	if (EXTI::PR::get_bit(20)) {
		display::update_brightness();

		auto time	  = RTC::TR::get_reg();
		auto raw_time = display::bcd_to_raw((time & 0x300000) >> 20,
											(time & 0xF0000) >> 16,
											(time & 0x7000) >> 12,
											(time & 0xF00) >> 8);

		if (toggle) {
			display::fill_buffer(raw_time | DP2);
		} else {
			if (state == STATE::RUNNING) {
				display::fill_buffer(raw_time);
			} else {
				display::fill_buffer(0);
			}
		}

		if (state == STATE::SETUP_HRS) {
			if (both_up) {
				both_up = false;
				state	= STATE::RUNNING;
			}
			if (both_down) {
				both_down = false;
				state	  = STATE::SETUP_MINS;
			}
			if (up) {
				up		 = false;
				auto hrs = (time >> 16) & 0x3F;
				auto min = (time >> 8) & 0x7F;
				auto sec = (time) &0x7F;
				if (hrs == 0x23) {
					hrs = 0;
				} else {
					if ((hrs & 0xF) == 0x9) {
						hrs += 0b1'0000;
						hrs &= ~0xF;
					} else {
						++hrs;
					}
				}

				RTC::set_time(hrs, min, sec);
			}
			if (down) {
				down	 = false;
				auto hrs = (time >> 16) & 0x3F;
				auto min = (time >> 8) & 0x7F;
				auto sec = (time) &0x7F;
				if (hrs == 0) {
					hrs = 0x23;
				} else {
					if (((hrs - 1) & 0xF) >= 10) {
						hrs -= 0b1'0000;
						hrs += 0x9;
					} else {
						--hrs;
					}
				}

				RTC::set_time(hrs, min, sec);
			}
		}

		toggle = !toggle;
		display::send();

		EXTI::PR::set_bit(20);
		// RTC::ISR::clear_bit(10);
		RTC::isr::WUTF::clear();
	}
}

// NVIC 5
// sw time
void EXTI0_1_IRQHandler() {
	EXTI::PR::set_bit(0);

	if (sw_time::is_low()) {		// Falling Edge
		if (sw_date::is_low()) {	// other switch
			both	  = true;
			both_down = true;
		}
	} else {	// Rising Edge
		if (!both) {
			up = true;
		} else {
			if (sw_date::is_high()) both = false;
		}
	}
}

// NVIC 7
// sw date
void EXTI4_15_IRQHandler() {
	EXTI::PR::set_bit(10);

	if (sw_date::is_low()) {	// Falling Edge
		if (sw_time::is_low()) {
			both	= true;
			both_up = true;
		}
	} else {	// Rising Edge
		if (!both) {
			down = true;
		} else {
			// if both are high
			if (sw_time::is_high()) both = false;
		}
	}
}

inline static void power() {
	SYSCFG::enable();
	RTC::enable();
	SPI1::enable();
	GPIOA::enable();
}

int main() {
	power();

	// if (RTC::ISR::get_bit(4) == 0) {
	if (RTC::isr::INITS::read() == 0) {
		state = STATE::SETUP_HRS;
		RTC::set_time_and_date(0, 0, 0, 1, 1, 2021);
	}

	// RTC Wakup Timer configuration
	RTC::disable_write_protect();
	RTC::cr::WUTE::write(off);
	// while (RTC::ISR::get_bit(2) != 1) {	   // WUTWF
	while (RTC::isr::WUTWF::read() == 0) {	  // WUTWF
		asm("nop");
	}
	// 1023 ==> 0.5sec
	// 511  ==> 0.25sec
	// 255  ==> 0.125sec
	RTC::WUTR::set_reg(1023);
	RTC::cr::WUTE::write(on);

	EXTI::IMR::set_bit(20);
	EXTI::RTSR::set_bit(20);

	NVIC::ISER::set_bit(2);

	RTC::cr::WUTIE::write(on);
	RTC::enable_write_protect();

	display::setup();

	sw_time::set_mode(gpio::MODE::INPUT);
	sw_time::set_pullup(gpio::PUPD::PULLUP);
	EXTI::IMR::set_bit(0);
	EXTI::FTSR::set_bit(0);
	EXTI::RTSR::set_bit(0);
	SYSCFG::EXTICR1::set_reg(0);
	NVIC::ISER::set_bit(5);

	sw_date::set_mode(gpio::MODE::INPUT);
	sw_date::set_pullup(gpio::PUPD::PULLUP);
	EXTI::IMR::set_bit(10);
	EXTI::FTSR::set_bit(10);
	EXTI::RTSR::set_bit(10);
	SYSCFG::EXTICR3::set_reg(0);
	NVIC::ISER::set_bit(7);

	zol::enable_interrupts();
	// RTC::ISR::clear_bit(10);
	RTC::isr::WUTF::clear();

	while (true) {
		asm("nop");
	}
}
