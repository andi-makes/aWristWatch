#pragma once

#include <chip/gpio.h>

enum class GPIO_MODE { INPUT, OUTPUT, ALTERNATE, ANALOG };

template<typename gpiox, int number>
struct pin {
	using GPIO						= gpiox;
	static constexpr int pin_number = number;

	inline static void high() { GPIO::BSRR::set_reg(1 << pin_number); }
	inline static void low() { GPIO::BSRR::set_reg((1 << pin_number) << 16); }

	inline static void set_mode(GPIO_MODE mode) {
		GPIO::MODER::and_reg(~(0b11 << (pin_number * 2)));
		GPIO::MODER::or_reg((int) mode << (pin_number * 2));
	}

	static void disable_pullup() {
		GPIO::PUPDR::clear_bit(1 << (pin_number * 2));
	}

	static void disable_pulldown() {
		GPIO::PUPDR::clear_bit(1 << (pin_number * 2 + 1));
	}

	static void enable_pullup() {
		disable_pulldown();
		GPIO::PUPDR::set_bit(pin_number * 2);
	}

	static void enable_pulldown() {
		disable_pullup();
		GPIO::PUPDR::set_bit(pin_number * 2 + 1);
	}

	static bool is_low() { return GPIO::IDR::get_bit(number) == 0; }
	static bool is_high() { return GPIO::IDR::get_bit(number) == 1; }
};