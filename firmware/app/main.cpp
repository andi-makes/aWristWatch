#include "bat.hpp"
#include "display.hpp"
#include "input.hpp"

#include <chip/adc.hpp>
#include <chip/exti.hpp>
#include <chip/interrupts.hpp>
#include <chip/lptim.hpp>
#include <chip/nvic.hpp>
#include <chip/pwr.hpp>
#include <chip/rcc.hpp>
#include <chip/rtc.hpp>
#include <chip/spi.hpp>
#include <chip/syscfg.hpp>
#include <util/pin.hpp>

namespace {
	bool half_second = false;
	int hrs, min, day, mon, year;

	int bcd_to_num(int bcd) {
		int num = bcd & 0xF;
		int mul = 1;
		while (bcd > 0) {
			bcd >>= 4;
			mul *= 10;
			num += (bcd & 0xF) * mul;
		}
		return num;
	}

	int num_to_bcd(int num) {
		int bcd = num % 10;
		num /= 10;
		int i = 1;
		while (num > 0) {
			bcd |= (num % 10) << (4 * i);
			num /= 10;
			++i;
		}
		return bcd;
	}

	void fill_time_buffer() {
		const auto time = RTC::TR::get_reg();

		hrs = bcd_to_num((time & 0x3F0000) >> 16);
		min = bcd_to_num((time & 0x007F00) >> 8);
	}

	void apply_time_buffer() {
		RTC::set_time(num_to_bcd(hrs), num_to_bcd(min), 0);
	}

	void fill_date_buffer() {
		const auto date = RTC::DR::get_reg();

		day	 = bcd_to_num((date & 0x00003F));
		mon	 = bcd_to_num((date & 0x001F00) >> 8);
		year = bcd_to_num((date & 0xFF0000) >> 16);
	}

	void apply_date_buffer() {
		RTC::set_date(num_to_bcd(day), num_to_bcd(mon), num_to_bcd(year));
	}

	constexpr int stdby = 80;
}

enum class STATE {
	EDIT_HRS,
	EDIT_MINS,
	EDIT_DAY,
	EDIT_MONTH,
	EDIT_YEAR,
	DISPLAY_TIME,
	DISPLAY_DATE,
	DISPLAY_YEAR,
	DISPLAY_BAT,
	DISPLAY_BRIGHTNESS,
	EDIT_BRIGHTNESS
};

STATE state = STATE::DISPLAY_TIME;

void RTC_IRQHandler() {
	if (EXTI::PR::get_bit(20)) {
		if (!display::is_on()) {
			EXTI::PR::set_bit(20);
			RTC::isr::WUTF::clear();
			return;
		}
		static int c = 0;
		input::counter++;
		c++;
		display::update_brightness();

		auto time	  = RTC::TR::get_reg();
		auto raw_time = display::bcd_to_raw((time & 0x300000) >> 20,
											(time & 0xF0000) >> 16,
											(time & 0x7000) >> 12,
											(time & 0xF00) >> 8);

		switch (state) {
		case STATE::DISPLAY_TIME: {
			if (half_second) {
				display::fill_buffer(raw_time | display::DP2);
			} else {
				display::fill_buffer(raw_time);
			}
			if (input::is_up()) {
				state = STATE::DISPLAY_DATE;
			} else if (input::is_down()) {
				state = STATE::DISPLAY_BAT;
			} else if (input::is_both_down()) {
				state = STATE::EDIT_HRS;
				fill_time_buffer();
			} else if (input::is_both_up()) {
				state = STATE::EDIT_MINS;
				fill_time_buffer();
			}
		} break;
		case STATE::EDIT_HRS: {
			if (input::is_up()) {
				hrs++;
				if (hrs > 23) {
					hrs = 0;
				}
			} else if (input::is_down()) {
				if (hrs <= 0) {
					hrs = 23;
				} else {
					hrs--;
				}
			} else if (input::is_both_down()) {
				state = STATE::EDIT_MINS;
			} else if (input::is_both_up()) {
				state = STATE::DISPLAY_TIME;
				apply_time_buffer();
			}

			display::fill_buffer(
				display::bcd_to_raw((num_to_bcd(hrs) & 0xF0) >> 4,
									num_to_bcd(hrs) & 0xF,
									(num_to_bcd(min) & 0xF0) >> 4,
									num_to_bcd(min) & 0xF) |
				display::DP1 | display::DP2);
		} break;
		case STATE::EDIT_MINS: {
			if (input::is_up()) {
				min++;
				if (min > 59) {
					min = 0;
				}
			} else if (input::is_down()) {
				if (min <= 0) {
					min = 59;
				} else {
					min--;
				}
			} else if (input::is_both_down()) {
				state = STATE::DISPLAY_TIME;
				apply_time_buffer();
			} else if (input::is_both_up()) {
				state = STATE::EDIT_HRS;
			}

			display::fill_buffer(
				display::bcd_to_raw((num_to_bcd(hrs) & 0xF0) >> 4,
									num_to_bcd(hrs) & 0xF,
									(num_to_bcd(min) & 0xF0) >> 4,
									num_to_bcd(min) & 0xF) |
				display::DP3 | display::DP4);
		} break;
		case STATE::DISPLAY_DATE: {
			auto date = RTC::DR::get_reg();
			display::fill_buffer(display::bcd_to_raw((date & 0x30) >> 4,
													 (date & 0xF),
													 (date & 0x1000) >> 12,
													 (date & 0xF00) >> 8) |
								 display::DP2);
			if (input::is_up()) {
				state = STATE::DISPLAY_YEAR;
			} else if (input::is_down()) {
				state = STATE::DISPLAY_TIME;
			} else if (input::is_both_down()) {
				state = STATE::EDIT_DAY;
				fill_date_buffer();
			} else if (input::is_both_up()) {
				state = STATE::EDIT_MONTH;
				fill_date_buffer();
			}
		} break;
		case STATE::EDIT_DAY: {
			if (input::is_up()) {
				day++;
				if (day > 31) {
					day = 1;
				}
			} else if (input::is_down()) {
				if (day <= 1) {
					day = 31;
				} else {
					day--;
				}
			} else if (input::is_both_down()) {
				state = STATE::EDIT_MONTH;
			} else if (input::is_both_up()) {
				state = STATE::DISPLAY_DATE;
				apply_date_buffer();
			}

			display::fill_buffer(
				display::bcd_to_raw((num_to_bcd(day) & 0xF0) >> 4,
									num_to_bcd(day) & 0xF,
									(num_to_bcd(mon) & 0xF0) >> 4,
									num_to_bcd(mon) & 0xF) |
				display::DP1 | display::DP2);
		} break;
		case STATE::EDIT_MONTH: {
			if (input::is_up()) {
				mon++;
				if (mon > 12) {
					mon = 1;
				}
			} else if (input::is_down()) {
				if (mon <= 1) {
					mon = 12;
				} else {
					mon--;
				}
			} else if (input::is_both_down()) {
				state = STATE::DISPLAY_DATE;
				apply_date_buffer();
			} else if (input::is_both_up()) {
				state = STATE::EDIT_DAY;
			}

			display::fill_buffer(
				display::bcd_to_raw((num_to_bcd(day) & 0xF0) >> 4,
									num_to_bcd(day) & 0xF,
									(num_to_bcd(mon) & 0xF0) >> 4,
									num_to_bcd(mon) & 0xF) |
				display::DP3 | display::DP4);
		} break;
		case STATE::DISPLAY_YEAR: {
			auto date = RTC::DR::get_reg();
			display::fill_buffer(display::bcd_to_raw(
				2, 0, (date & 0xF00000) >> 20, (date & 0xF0000) >> 16));

			if (input::is_down()) {
				state = STATE::DISPLAY_DATE;
			} else if (input::is_both_down()) {
				state = STATE::EDIT_YEAR;
				fill_date_buffer();
			} else if (input::is_both_up()) {
				state = STATE::EDIT_YEAR;
				fill_date_buffer();
			}
		} break;
		case STATE::EDIT_YEAR: {
			if (input::is_up()) {
				year++;
				if (year > 99) {
					year = 0;
				}
			} else if (input::is_down()) {
				if (year < 0) {
					year = 99;
				} else {
					year--;
				}
			} else if (input::is_both_down()) {
				state = STATE::DISPLAY_YEAR;
				apply_date_buffer();
			} else if (input::is_both_up()) {
				state = STATE::DISPLAY_YEAR;
				apply_date_buffer();
			}

			display::fill_buffer(
				display::bcd_to_raw(2,
									0,
									(num_to_bcd(year) & 0xF0) >> 4,
									(num_to_bcd(year) & 0xF)) |
				display::DP3 | display::DP4);
		} break;
		case STATE::DISPLAY_BAT: {
			int percentage = battery::calc_level();

			display::fill_buffer_bcd(
				10, (percentage / 10) % 10, percentage % 10, 10);

			if (input::is_up()) {
				state = STATE::DISPLAY_TIME;
			} else if (input::is_down()) {
				state = STATE::DISPLAY_BRIGHTNESS;
			}

		} break;
		case STATE::DISPLAY_BRIGHTNESS: {
			display::fill_buffer_bcd(10,
									 10,
									 (display::brightness / 10) % 10,
									 display::brightness % 10);

			if (input::is_up()) {
				state = STATE::DISPLAY_BAT;
			} else if (input::is_both_down()) {
				state = STATE::EDIT_BRIGHTNESS;
			}
		} break;
		case STATE::EDIT_BRIGHTNESS: {
			if (input::is_up()) {
				if (display::brightness != 99) display::brightness++;
			} else if (input::is_down()) {
				if (display::brightness != 1) display::brightness--;
			} else if (input::is_both_up() || input::is_both_down()) {
				state = STATE::DISPLAY_BRIGHTNESS;
			}
			display::fill_buffer_bcd(10,
									 10,
									 (display::brightness / 10) % 10,
									 display::brightness % 10);
			display::add_point(display::DP3 | display::DP4);
			display::update_brightness();
		} break;
		}

		// Half a second passed
		if (c == 4) {
			half_second = !half_second;
			c			= 0;
			battery::sample();
		}
		display::send();

		if (input::counter >= stdby &&
			(state == STATE::DISPLAY_TIME || state == STATE::DISPLAY_DATE ||
			 state == STATE::DISPLAY_YEAR)) {
			input::counter = 0;
			display::off();
		}

		EXTI::PR::set_bit(20);
		RTC::isr::WUTF::clear();
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

	if (RTC::is_initialized() == false) {
		state = STATE::EDIT_HRS;
		RTC::set_time_and_date(0, 0, 0, 1, 1, 0x21);
	}

	// RTC Wakup Timer configuration
	RTC::disable_write_protect();
	RTC::cr::WUTE::write(off);
	while (RTC::isr::WUTWF::read() == 0) {	  // WUTWF
		asm("nop");
	}
	// 1023 ==> 0.5sec
	// 511  ==> 0.25sec
	// 255  ==> 0.125sec
	RTC::WUTR::set_reg(255);
	RTC::cr::WUTE::write(on);

	EXTI::IMR::set_bit(20);
	EXTI::RTSR::set_bit(20);

	NVIC::ISER::set_bit(2);

	RTC::cr::WUTIE::write(on);
	RTC::enable_write_protect();

	battery::setup();

	display::setup();
	input::setup();

	asm("CPSIE I");
	RTC::isr::WUTF::clear();

	while (true) {
		asm("nop");
	}
}
