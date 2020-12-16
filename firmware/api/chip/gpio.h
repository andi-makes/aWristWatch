#pragma once

#include <cinttypes>
#include <register.h>

template<uint64_t address>
struct GPIOx {
	enum class MODE : uint8_t {
		INPUT	  = 0,
		OUTPUT	  = 1,
		ALTERNATE = 2,
		ANALOG	  = 3
	};

	enum class OTYPE : uint8_t {	//
		PUSH_PULL  = 0,
		OPEN_DRAIN = 1
	};

	enum class OSPEED : uint8_t {
		LOW		  = 0,
		MEDIUM	  = 1,
		HIGH	  = 2,
		VERY_HIGH = 3
	};

	enum class PUPD : uint8_t { DISABLED = 0, PULLUP = 1, PULLDOWN = 2 };

	using MODER	  = zol::reg<uint32_t, address + 0x0>;
	using OTYPER  = zol::reg<uint32_t, address + 0x4>;
	using OSPEEDR = zol::reg<uint32_t, address + 0x8>;
	using PUPDR	  = zol::reg<uint32_t, address + 0xC>;
	using IDR	  = zol::reg<uint32_t, address + 0x10>;
	using ODR	  = zol::reg<uint32_t, address + 0x14>;
	using BSRR	  = zol::reg<uint32_t, address + 0x18>;
	using LCKR	  = zol::reg<uint32_t, address + 0x1C>;
	using AFRL	  = zol::reg<uint32_t, address + 0x20>;
	using AFRH	  = zol::reg<uint32_t, address + 0x24>;
	using BRR	  = zol::reg<uint32_t, address + 0x28>;

	static void set_mode(uint8_t pin, MODE m) {
		MODER::and_reg(~(0b11 << (pin * 2)));
		MODER::or_reg(m << (pin * 2));
	}

	static void set_output_type(uint8_t pin, OTYPE t) {
		if (t == 1) {
			OTYPER::set_bit(pin);
		} else {
			OTYPER::clear_bit(pin);
		}
	}

	static void set_output_speed(uint8_t pin, OSPEED s) {
		OSPEEDR::and_reg(~(0b11 << (pin * 2)));
		OSPEEDR::or_reg(s << (pin * 2));
	}

	static void set_pullup(uint8_t pin, PUPD p) {
		PUPDR::and_reg(~(0b11 << (pin * 2)));
		PUPDR::or_reg(p << (pin * 2));
	}

	static bool get_input_data(uint8_t pin) { return IDR::get_bit(pin); }

	static bool get_output_data(uint8_t pin) { return ODR::get_bit(pin); }

	/**
	 * @brief Unless you have a good reason, use bit set / bit reset functions
	 * @deprecated use bit set / reset functions
	 */
	static void set_output_data(uint8_t pin, bool level) {
		if (level) {
			ODR::set_bit(pin);
		} else {
			ODR::clear_bit(pin);
		}
	}

	static void set_bit(uint8_t pin, bool level) {
		if (level) {
			BSRR::set_bit(pin);
		} else {
			BRR::set_bit(pin);
		}
	}

	// TODO: Lock, alternate functions,

private:
	GPIOx();
};
constexpr uint64_t GPIOA_ADDR = 0x5000'0000;

using GPIOA = GPIOx<GPIOA_ADDR>;