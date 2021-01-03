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

void set_rtc_time(int hrs, int min, int sec) {
	RTC::disable_write_protect();
	RTC::ISR::set_bit(7);
	while (RTC::ISR::get_bit(6) == 0) {
		asm("nop");
	}

	RTC::TR::set_reg(sec | (min << 8) | (hrs << 16));

	RTC::ISR::clear_bit(7);

	RTC::enable_write_protect();
}
void set_rtc_date(int date, int month, int year) {
	RTC::disable_write_protect();
	RTC::ISR::set_bit(7);
	while (RTC::ISR::get_bit(6) == 0) {
		asm("nop");
	}

	RTC::DR::set_reg(date | (month << 8) | (year << 16));

	RTC::ISR::clear_bit(7);

	RTC::enable_write_protect();
}

void rtc_default_init() {
	RTC::disable_write_protect();

	RTC::ISR::set_bit(7);
	while (RTC::ISR::get_bit(6) == 0) {
		asm("nop");
	}

	RTC::TR::set_reg(0x00'00'00);
	RTC::DR::set_reg(0x20'01'01);

	RTC::CR::set_reg(0);

	RTC::ISR::clear_bit(7);

	RTC::enable_write_protect();
}

namespace {
	uint32_t last_time = 0;

	bool first_time = true;

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

		first_time = false;
		last_time  = RTC::TR::get_reg() & (~0xFF);

		if (toggle) {
			display::fill_buffer(
				display::bcd_to_raw((last_time & 0x300000) >> 20,
									(last_time & 0xF0000) >> 16,
									(last_time & 0x7000) >> 12,
									(last_time & 0xF00) >> 8) |
				DP2);
		} else {
			if (state == STATE::RUNNING) {
				display::fill_buffer(
					display::bcd_to_raw((last_time & 0x300000) >> 20,
										(last_time & 0xF0000) >> 16,
										(last_time & 0x7000) >> 12,
										(last_time & 0xF00) >> 8));
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
				auto hrs = (RTC::TR::get_reg() >> 16) & 0x3F;
				auto min = (RTC::TR::get_reg() >> 8) & 0x7F;
				auto sec = (RTC::TR::get_reg()) & 0x7F;
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

				set_rtc_time(hrs, min, sec);
			}
			if (down) {
				down	 = false;
				auto hrs = (RTC::TR::get_reg() >> 16) & 0x3F;
				auto min = (RTC::TR::get_reg() >> 8) & 0x7F;
				auto sec = (RTC::TR::get_reg()) & 0x7F;
				if (hrs == 0) {
					hrs = 0x24;
				} else {
					if (((hrs - 1) & 0xF) >= 10) {
						hrs -= 0b1'0000;
						hrs += 0x9;
					} else {
						--hrs;
					}
				}

				set_rtc_time(hrs, min, sec);
			}
		}

		toggle = !toggle;
		display::send();

		EXTI::PR::set_bit(20);
		RTC::ISR::clear_bit(10);
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

int main(void) {
	RCC::APB2ENR::set_bit(0);	 // Enable Syscfg
	RTC::enable();
	RCC::APB2ENR::set_bit(12);	  // Enable SPI1

	if (RTC::ISR::get_bit(4) == 0) {
		state = STATE::SETUP_HRS;
		rtc_default_init();
	}

	// RTC Wakup Timer configuration
	RTC::disable_write_protect();
	RTC::CR::clear_bit(10);				   // Clear WUTE
	while (RTC::ISR::get_bit(2) != 1) {	   // WUTWF
		asm("nop");
	}
	// 1023 ==> 0.5sec
	// 511  ==> 0.25sec
	// 255  ==> 0.125sec
	RTC::WUTR::set_reg(1023);
	RTC::CR::set_bit(10);	 // Set WUTE

	EXTI::IMR::set_bit(20);
	EXTI::RTSR::set_bit(20);

	NVIC::ISER::set_bit(2);

	RTC::CR::set_bit(14);	 // WUTIE
	RTC::enable_write_protect();

	// Enable GPIOA
	RCC::IOPENR::set_bit(0);

	display::setup();

	// Enable LED Driver
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
	RTC::ISR::clear_bit(10);

	while (true) {
		asm("nop");
	}
}
