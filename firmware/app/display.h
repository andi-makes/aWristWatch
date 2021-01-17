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
	static void send();

	static void fill_buffer(uint32_t b) { buffer = b; }
	static void
		fill_buffer_bcd(uint8_t one, uint8_t two, uint8_t three, uint8_t four) {
		fill_buffer(bcd_to_raw(one, two, three, four));
	}

	static uint32_t
		bcd_to_raw(uint8_t one, uint8_t two, uint8_t three, uint8_t four);

	static uint32_t buffer;

private:
	display() {}
};