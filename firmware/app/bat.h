#pragma once

#include <chip/adc.h>
#include <chip/dma.h>
#include <util/pin.h>

struct battery {
	static uint16_t adc_buffer[2];

	static void setup() {
		DMA::power_on();
		ADC::power_on();

		DMA::CSELR::set_reg(0);
		DMA::CPARx<1>::set_reg(ADC::DR::get_address());
		DMA::CMARx<1>::set_reg(uint32_t(adc_buffer));
		DMA::CNDTRx<1>::set_reg(2);
		DMA::CCRx<1>::set_reg((3 << 12) | (1 << 10) | (1 << 8) | (1 << 7) |
							  (1 << 5));
		DMA::CCRx<1>::set_bit(0);

		ADC::cfgr1::AUTOFF::write(1);
		ADC::cfgr1::OVRMOD::write(1);
		ADC::cfgr1::RES::set(1);		 // 10 bit
		ADC::cfgr1::DMACFG::write(1);	 // Circular mode
		ADC::cfgr1::DMAEN::write(1);

		ADC::cfgr2::CKMODE::set(2);	   // PCLK / 4
		ADC::cfgr2::OVSS::set(5);	   // >> 5
		ADC::cfgr2::OVSR::set(2);	   // 8x
		ADC::cfgr2::OVSE::write(1);
		ADC::SMPR::set_reg(3);	  // 12.5 ADC CLK Cycles for sampling time

		ADC::CHSELR::set_bit(1);	 // PA1
		ADC::CHSELR::set_bit(17);	 // Vrefint

		ADC::ccr::LFMEN::write(1);
		ADC::ccr::VREFEN::write(1);
		ADC::calibrate();	 // also affected by dma, first element in
							 // adc_buffer

		ADC::enable();
	}

	static int calc_level() {
		// Because of the calibration value, the value of channel 1 is at index
		// 1 and the vrefint is at index 0
		int voltage = 122.4f * float(2 * adc_buffer[1]) / float(adc_buffer[0]);
		int percentage = ((voltage - 330) * 100) / (82);
		if (percentage >= 100) percentage = 99;
		if (percentage < 0) percentage = 0;
		return percentage;
	}

	static void sample() { ADC::cr::ADSTART::set(); }

private:
	battery() {}
};
