#pragma once

#include <cinttypes>
#include <util/pin.h>

constexpr uint8_t seg1_3[] = { 0b01111011, 0b00101000, 0b10110011, 0b10111010,
							   0b11101000, 0b11011010, 0b11011011, 0b00111000,
							   0b11111011, 0b11111010, 0 };

constexpr uint8_t seg2_4[] = { 0b01111011, 0b01000001, 0b00110111, 0b01010111,
							   0b01001101, 0b01011110, 0b01111110, 0b01000011,
							   0b01111111, 0b01011111, 0 };

struct display {
	using oe  = pin<GPIOA, 9>;
	using le  = pin<GPIOA, 4>;
	using clk = pin<GPIOA, 5>;
	using mdi = pin<GPIOA, 6>;
	using sdi = pin<GPIOA, 7>;

	static constexpr uint32_t DP1 = 1 << 26;
	static constexpr uint32_t DP2 = 1 << 31;
	static constexpr uint32_t DP3 = 1 << 18;
	static constexpr uint32_t DP4 = 1 << 23;

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
		bcd_to_raw(uint8_t one, uint8_t two, uint8_t three, uint8_t four) {
		if (one > 10) one = 10;
		if (two > 10) two = 10;
		if (three > 10) three = 10;
		if (four > 10) four = 10;

		return (uint32_t(seg2_4[two] >> 4) << 28) |
			   (uint32_t(seg1_3[one] & 0xF) << 24) |
			   (uint32_t(seg2_4[four] >> 4) << 20) |
			   (uint32_t(seg1_3[three] & 0xF) << 16) |
			   (uint32_t(seg1_3[one] >> 4) << 12) |
			   (uint32_t(seg2_4[two] & 0xF) << 8) |
			   (uint32_t(seg1_3[three] >> 4) << 4) |
			   (uint32_t(seg2_4[four] & 0xF) << 0);
	}

	static uint32_t buffer;

private:
	display() {}
};