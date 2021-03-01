#pragma once

#include <chip/adc.hpp>
#include <chip/dma.hpp>
#include <chip/pwr.hpp>
#include <util/pin.hpp>

struct battery {
    static void setup() {
        DMA::power_on();
        ADC::power_on();

        DMA::CPARx<1>::set_reg(ADC::DR::get_address());
// NOLINTNEXTLINE(clang-diagnostic-error): Address size is 32 bits
#ifndef __clang_analyzer__
        DMA::CMARx<1>::set_reg(uint32_t(adc_buffer));
#endif
        DMA::CNDTRx<1>::set_reg(1);
        DMA::CCRx<1>::set_reg((3 << 12) | (1 << 10) | (1 << 8) | (1 << 5));
        DMA::CCRx<1>::set_bit(0);

        ADC::cfgr1::AUTOFF::write(1);
        ADC::cfgr1::OVRMOD::write(1);
        ADC::cfgr1::DMACFG::write(1);    // Circular mode
        ADC::cfgr1::DMAEN::write(1);

        ADC::cfgr2::CKMODE::set(2);    // PCLK / 4
        ADC::SMPR::set_reg(3);         // 12.5 ADC CLK Cycles for sampling time

        ADC::CHSELR::set_bit(1);    // PA1

        ADC::ccr::LFMEN::write(1);
        ADC::calibrate();    // also affected by dma, first element in
                             // adc_buffer

        ADC::enable();
    }

    static int calc_level() {
        auto adc{ *adc_buffer };
        adc -= 2048;
        if (adc < 0) return 0;
        adc = (adc * 100) / 558;
        if (adc > 99) return 99;
        return adc;
    }

    static void sample() { ADC::cr::ADSTART::set(); }

    battery() = delete;

private:
    static int16_t adc_buffer[1];
};
