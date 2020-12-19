#include "display.h"

#include <chip/lptim.h>
#include <chip/rcc.h>

namespace {
	constexpr uint8_t seg1_3[] = { 0b01111011, 0b00101000, 0b10110011,
								   0b10111010, 0b11101000, 0b11011010,
								   0b11011011, 0b00111000, 0b11111011,
								   0b11111010 };

	constexpr uint8_t seg2_4[] = { 0b01111011, 0b01000001, 0b00110111,
								   0b01010111, 0b01001101, 0b01011110,
								   0b01111110, 0b01000011, 0b01111111,
								   0b01011111 };

}

uint8_t display::brightness = 1;

void display::update_brightness() {
	if (brightness == 0xFF) {
		oe::set_mode(gpio::MODE::OUTPUT);
		oe::set_bit(low);
	} else if (brightness == 0) {
		oe::set_mode(gpio::MODE::OUTPUT);
		oe::set_bit(high);
	} else {
		oe::set_mode(gpio::MODE::ALTERNATE);
		LPTIM1::CMP::set_reg(brightness & 0xFF);
	}
}

void display::setup() {
	// Enable LPTIM1
	RCC::CCIPR::or_reg(3 << 18);	// LPTIM1 should use LSE Clock
	RCC::APB1ENR::set_bit(31);		// Route Power to LPTIM1
	LPTIM1::CFGR::set_reg(0);		// All the defaults
	LPTIM1::CR::set_bit(0);			// Enable the LPTIM1
	LPTIM1::ARR::set_reg(656);		// Set top limit of PWM (656 ~= 50Hz)
	LPTIM1::CR::set_bit(2);			// Start the PWM in continous mode

	oe::GPIO::AFRH::and_reg(~(0xF0));
	oe::GPIO::AFRH::or_reg(2 << 4);

	oe::set_mode(gpio::MODE::ALTERNATE);
	le::set_mode(gpio::MODE::OUTPUT);
	clk::set_mode(gpio::MODE::OUTPUT);
	sdi::set_mode(gpio::MODE::OUTPUT);

	sdi::set_bit(high);
	le::set_bit(high);
}
void display::send_bcd(uint8_t one, uint8_t two, uint8_t three, uint8_t four) {
	send_raw(bcd_to_raw(one, two, three, four));
}
void display::send_raw(uint32_t raw) {
	for (int i = 0; i < 32; ++i) {
		if ((1 << i) & raw) {
			sdi::set_bit(high);
		} else {
			sdi::set_bit(low);
		}
		clk::set_bit(high);
		clk::set_bit(low);
	}

	le::set_bit(low);
	le::set_bit(high);
}

uint32_t
	display::bcd_to_raw(uint8_t one, uint8_t two, uint8_t three, uint8_t four) {
	if (one > 9) one = 9;
	if (two > 9) two = 9;
	if (three > 9) three = 9;
	if (four > 9) four = 9;

	return (uint32_t(seg2_4[two] >> 4) << 28) |
		   (uint32_t(seg1_3[one] & 0xF) << 24) |
		   (uint32_t(seg2_4[four] >> 4) << 20) |
		   (uint32_t(seg1_3[three] & 0xF) << 16) |
		   (uint32_t(seg1_3[one] >> 4) << 12) |
		   (uint32_t(seg2_4[two] & 0xF) << 8) |
		   (uint32_t(seg1_3[three] >> 4) << 4) |
		   (uint32_t(seg2_4[four] & 0xF) << 0);
}
