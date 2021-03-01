#pragma once

#include <chip/gpio.hpp>

constexpr bool high = true;
constexpr bool low	= false;

template<typename gpiox, int number>
struct pin {
	using GPIO						= gpiox;
	static constexpr int pin_number = number;

	static constexpr uint8_t check_pin() {
		static_assert(number <= 15, "pin must be lower or equal to 15!");
		return number;
	}

	static void set_mode(gpio::MODE m) { GPIO::set_mode(check_pin(), m); }

	static void set_output_type(gpio::OTYPE t) {
		GPIO::set_output_type(check_pin(), t);
	}

	static void set_output_speed(gpio::OSPEED s) {
		GPIO::set_output_speed(check_pin(), s);
	}
	static void set_pullup(gpio::PUPD p) { GPIO::set_pullup(check_pin(), p); }
	static void set_alternate_function(gpio::AF f) {
		GPIO::set_alternate_function(check_pin(), f);
	}

	static bool get_input_data() { return GPIO::get_input_data(check_pin()); }

	static bool is_high() { return get_input_data(); }
	static bool is_low() { return !get_input_data(); }

	static bool get_output_data() { return GPIO::get_output_data(check_pin()); }

	static void set_output_data(bool level) {
		GPIO::set_output_data(check_pin(), level);
	}
	static void set_bit(bool level) { GPIO::set_bit(check_pin(), level); }
	static void lock_pin() { GPIO::lock_pin(check_pin()); }

	pin() = delete;
};