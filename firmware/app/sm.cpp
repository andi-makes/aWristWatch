#include "sm.hpp"

#include "driver/bat.hpp"
#include "driver/display.hpp"
#include "driver/input.hpp"
#include "util/bcd.hpp"
#include "util/time.hpp"

#include <chip/rtc.hpp>

namespace aww::sm {
	STATE state{ STATE::DISPLAY_TIME };
	void set_state(const STATE s) { state = s; }
	STATE get_state() { return state; }

	void exec(const bool half_second) {
		auto time{ RTC::TR::get_reg() };
		auto raw_time{ display::bcd_to_raw((time & 0x300000) >> 20,
										   (time & 0xF0000) >> 16,
										   (time & 0x7000) >> 12,
										   (time & 0xF00) >> 8) };

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
				time::load_time();
			} else if (input::is_both_up()) {
				state = STATE::EDIT_MINS;
				time::load_time();
			}
		} break;
		case STATE::EDIT_HRS: {
			if (input::is_up()) {
				time::hrs++;
				if (time::hrs > 23) {
					time::hrs = 0;
				}
			} else if (input::is_down()) {
				if (time::hrs <= 0) {
					time::hrs = 23;
				} else {
					time::hrs--;
				}
			} else if (input::is_both_down()) {
				state = STATE::EDIT_MINS;
			} else if (input::is_both_up()) {
				state = STATE::DISPLAY_TIME;
				time::store_time();
			}

			display::fill_buffer(
				display::bcd_to_raw(
					(aww::bcd::num_to_bcd(time::hrs) & 0xF0) >> 4,
					aww::bcd::num_to_bcd(time::hrs) & 0xF,
					(aww::bcd::num_to_bcd(time::min) & 0xF0) >> 4,
					aww::bcd::num_to_bcd(time::min) & 0xF) |
				display::DP1 | display::DP2);
		} break;
		case STATE::EDIT_MINS: {
			if (input::is_up()) {
				time::min++;
				if (time::min > 59) {
					time::min = 0;
				}
			} else if (input::is_down()) {
				if (time::min <= 0) {
					time::min = 59;
				} else {
					time::min--;
				}
			} else if (input::is_both_down()) {
				state = STATE::DISPLAY_TIME;
				time::store_time();
			} else if (input::is_both_up()) {
				state = STATE::EDIT_HRS;
			}

			display::fill_buffer(
				display::bcd_to_raw(
					(aww::bcd::num_to_bcd(time::hrs) & 0xF0) >> 4,
					aww::bcd::num_to_bcd(time::hrs) & 0xF,
					(aww::bcd::num_to_bcd(time::min) & 0xF0) >> 4,
					aww::bcd::num_to_bcd(time::min) & 0xF) |
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
				time::load_date();
			} else if (input::is_both_up()) {
				state = STATE::EDIT_MONTH;
				time::load_date();
			}
		} break;
		case STATE::EDIT_DAY: {
			if (input::is_up()) {
				time::day++;
				if (time::day > 31) {
					time::day = 1;
				}
			} else if (input::is_down()) {
				if (time::day <= 1) {
					time::day = 31;
				} else {
					time::day--;
				}
			} else if (input::is_both_down()) {
				state = STATE::EDIT_MONTH;
			} else if (input::is_both_up()) {
				state = STATE::DISPLAY_DATE;
				time::store_date();
			}

			display::fill_buffer(
				display::bcd_to_raw(
					(aww::bcd::num_to_bcd(time::day) & 0xF0) >> 4,
					aww::bcd::num_to_bcd(time::day) & 0xF,
					(aww::bcd::num_to_bcd(time::mon) & 0xF0) >> 4,
					aww::bcd::num_to_bcd(time::mon) & 0xF) |
				display::DP1 | display::DP2);
		} break;
		case STATE::EDIT_MONTH: {
			if (input::is_up()) {
				time::mon++;
				if (time::mon > 12) {
					time::mon = 1;
				}
			} else if (input::is_down()) {
				if (time::mon <= 1) {
					time::mon = 12;
				} else {
					time::mon--;
				}
			} else if (input::is_both_down()) {
				state = STATE::DISPLAY_DATE;
				time::store_date();
			} else if (input::is_both_up()) {
				state = STATE::EDIT_DAY;
			}

			display::fill_buffer(
				display::bcd_to_raw(
					(aww::bcd::num_to_bcd(time::day) & 0xF0) >> 4,
					aww::bcd::num_to_bcd(time::day) & 0xF,
					(aww::bcd::num_to_bcd(time::mon) & 0xF0) >> 4,
					aww::bcd::num_to_bcd(time::mon) & 0xF) |
				display::DP3 | display::DP4);
		} break;
		case STATE::DISPLAY_YEAR: {
			auto date{ RTC::DR::get_reg() };
			display::fill_buffer(display::bcd_to_raw(
				2, 0, (date & 0xF00000) >> 20, (date & 0xF0000) >> 16));

			if (input::is_down()) {
				state = STATE::DISPLAY_DATE;
			} else if (input::is_both_down() || input::is_both_up()) {
				state = STATE::EDIT_YEAR;
				time::load_date();
			}
		} break;
		case STATE::EDIT_YEAR: {
			if (input::is_up()) {
				time::year++;
				if (time::year > 99) {
					time::year = 0;
				}
			} else if (input::is_down()) {
				if (time::year < 0) {
					time::year = 99;
				} else {
					time::year--;
				}
			} else if (input::is_both_down() || input::is_both_up()) {
				state = STATE::DISPLAY_YEAR;
				time::store_date();
			}

			display::fill_buffer(
				display::bcd_to_raw(2,
									0,
									(aww::bcd::num_to_bcd(time::year) & 0xF0) >>
										4,
									(aww::bcd::num_to_bcd(time::year) & 0xF)) |
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
	}
}
