#pragma once

#include <chip/exti.h>
#include <chip/interrupts.h>
#include <chip/nvic.h>
#include <chip/syscfg.h>
#include <util/pin.h>

using sw_time = pin<GPIOA, 0>;
using sw_date = pin<GPIOA, 10>;

struct input {
	static bool both, both_up, both_down, up, down;

	static int counter;

	static bool is_both_up() {
		if (both_up) {
			both_up = false;
			return true;
		}
		return false;
	}

	static bool is_both_down() {
		if (both_down) {
			both_down = false;
			return true;
		}
		return false;
	}

	static bool is_up() {
		if (up) {
			up = false;
			return true;
		}
		return false;
	}

	static bool is_down() {
		if (down) {
			down = false;
			return true;
		}
		return false;
	}

	static bool is_both() {
		if (both) {
			both = false;
			return true;
		}
		return false;
	}

	static void setup() {
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
	}
};
