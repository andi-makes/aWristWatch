#include "display.h"

#include <chip/lptim.h>
#include <chip/nvic.h>
#include <chip/rcc.h>
#include <chip/spi.h>

// NVIC number 25
extern "C" void SPI1_IRQHandler() {
	static bool scnd = true;
	SPI1::DR::get_reg();
	SPI1::SR::get_reg();
	if (scnd) {
		SPI1::DR::set_reg((uint16_t)(display::buffer >> 16));
	} else {
		while (SPI1::SR::get_bit(SPI1::BSY)) {
			asm("nop");
		}
		SPI1::CR1::clear_bit(SPI1::SPE);	// Disable SPI
		display::le::set_bit(low);
		display::le::set_bit(high);
	}
	scnd = !scnd;
}
uint32_t display::buffer = 0;

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

	LPTIM1::set(lptim::cr::ENABLE, true);	 // Enable the LPTIM1
	LPTIM1::ARR::set_reg(656);	  // Set top limit of PWM (656 ~= 50Hz)
	LPTIM1::set(lptim::cr::CNTSTRT, true);	  // Start the PWM in continous mode

	oe::set_alternate_function(gpio::AF::AF2);

	oe::set_mode(gpio::MODE::ALTERNATE);
	le::set_mode(gpio::MODE::OUTPUT);
	clk::set_mode(gpio::MODE::ALTERNATE);
	sdi::set_mode(gpio::MODE::ALTERNATE);
	mdi::set_mode(gpio::MODE::ALTERNATE);

	SPI1::CR1::set_bit(SPI1::DFF);
	SPI1::CR1::set_bit(SPI1::SSI);
	SPI1::CR1::set_bit(SPI1::SSM);
	SPI1::CR1::set_bit(SPI1::LSBFIRST);
	SPI1::CR1::and_reg(~SPI1::BR_MASK);	   // Fast SPI, smallest prescaler
	SPI1::CR1::set_bit(SPI1::MSTR);
	SPI1::CR1::clear_bit(SPI1::CPHA);
	SPI1::CR1::clear_bit(SPI1::CPOL);

	SPI1::CR2::set_bit(SPI1::TXEIE);

	NVIC::ISER::set_bit(25);
}

void display::send() {
	SPI1::DR::set_reg((uint16_t)(buffer & 0xFFFF));
	SPI1::CR1::set_bit(SPI1::SPE);	  // Enable SPI
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
