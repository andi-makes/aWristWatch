#pragma once

#include <cinttypes>
#include <util/pin.h>

struct display {
	using oe  = pin<GPIOA, 9>;
	using le  = pin<GPIOA, 4>;
	using clk = pin<GPIOA, 5>;
	using mdi = pin<GPIOA, 6>;
	using sdi = pin<GPIOA, 7>;

	static uint8_t brightness;
	static void update_brightness();

	static void setup();
	static void send_bcd(uint8_t one, uint8_t two, uint8_t three, uint8_t four);
	static void send_raw(uint32_t raw);

	static uint32_t
		bcd_to_raw(uint8_t one, uint8_t two, uint8_t three, uint8_t four);
};