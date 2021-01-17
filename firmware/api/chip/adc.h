#pragma once

#include "rcc.h"

#include <bits.h>
#include <fields.h>
#include <register.h>

struct ADC {
	static constexpr zol::addr_t address = 0x4001'2400;

	using ISR	  = zol::reg<uint32_t, address + 0x0>;
	using IER	  = zol::reg<uint32_t, address + 0x4>;
	using CR	  = zol::reg<uint32_t, address + 0x8>;
	using CFGR1	  = zol::reg<uint32_t, address + 0xC>;
	using CFGR2	  = zol::reg<uint32_t, address + 0x10>;
	using SMPR	  = zol::reg<uint32_t, address + 0x14>;
	using TR	  = zol::reg<uint32_t, address + 0x20>;
	using CHSELR  = zol::reg<uint32_t, address + 0x28>;
	using DR	  = zol::reg<uint32_t, address + 0x40>;
	using CALFACT = zol::reg<uint32_t, address + 0xB4>;
	using CCR	  = zol::reg<uint32_t, address + 0x308>;

	struct isr {
		using EOCAL = zol::bit_rc1<ISR, 11>;
		using AWD	= zol::bit_rc1<ISR, 7>;
		using OVR	= zol::bit_rc1<ISR, 4>;
		using EOS	= zol::bit_rc1<ISR, 3>;
		using EOC	= zol::bit_rc1<ISR, 2>;
		using EOSMP = zol::bit_rc1<ISR, 1>;
		using ADRDY = zol::bit_rc1<ISR, 0>;

	private:
		isr() {}
	};

	struct ier {
		using EOCALIE = zol::bit_rw<IER, 11>;
		using AWDIE	  = zol::bit_rw<IER, 7>;
		using OVRIE	  = zol::bit_rw<IER, 4>;
		using EOSIE	  = zol::bit_rw<IER, 3>;
		using EOCIE	  = zol::bit_rw<IER, 2>;
		using EOSMPIE = zol::bit_rw<IER, 1>;
		using ADRDYIE = zol::bit_rw<IER, 0>;

	private:
		ier() {}
	};

	struct cr {
		using ADCAL	   = zol::bit_rs<CR, 31>;
		using ADVREGEN = zol::bit_rw<CR, 28>;
		using ADSTP	   = zol::bit_rs<CR, 4>;
		using ADSTART  = zol::bit_rs<CR, 2>;
		using ADDIS	   = zol::bit_rs<CR, 1>;
		using ADEN	   = zol::bit_rs<CR, 0>;

	private:
		cr() {}
	};

	struct cfgr1 {
		using AWDCH	  = zol::field_rw<CFGR1, 26, 5>;
		using AWDEN	  = zol::bit_rw<CFGR1, 23>;
		using AWDSGL  = zol::bit_rw<CFGR1, 22>;
		using DISCEN  = zol::bit_rw<CFGR1, 16>;
		using AUTOFF  = zol::bit_rw<CFGR1, 15>;
		using WAIT	  = zol::bit_rw<CFGR1, 14>;
		using CONT	  = zol::bit_rw<CFGR1, 13>;
		using OVRMOD  = zol::bit_rw<CFGR1, 12>;
		using EXTEN	  = zol::field_rw<CFGR1, 10, 2>;
		using EXTSEL  = zol::field_rw<CFGR1, 6, 3>;
		using ALIGN	  = zol::bit_rw<CFGR1, 5>;
		using RES	  = zol::field_rw<CFGR1, 3, 2>;
		using SCANDIR = zol::bit_rw<CFGR1, 2>;
		using DMACFG  = zol::bit_rw<CFGR1, 1>;
		using DMAEN	  = zol::bit_rw<CFGR1, 0>;

	private:
		cfgr1() {}
	};

	struct cfgr2 {
		using CKMODE = zol::field_rw<CFGR2, 30, 2>;
		using TOVS	 = zol::bit_rw<CFGR2, 9>;
		using OVSS	 = zol::field_rw<CFGR2, 5, 4>;
		using OVSR	 = zol::field_rw<CFGR2, 2, 3>;
		using OVSE	 = zol::bit_rw<CFGR2, 0>;

	private:
		cfgr2() {}
	};

	struct smpr {
		using SMP = zol::field_rw<SMPR, 0, 3>;

	private:
		smpr() {}
	};

	struct tr {
		using HT = zol::field_rw<TR, 16, 12>;
		using LT = zol::field_rw<TR, 0, 12>;

	private:
		tr() {}
	};

	struct chselr {
		using CHSEL18 = zol::bit_rw<CHSELR, 18>;
		using CHSEL17 = zol::bit_rw<CHSELR, 17>;
		using CHSEL16 = zol::bit_rw<CHSELR, 16>;
		using CHSEL15 = zol::bit_rw<CHSELR, 15>;
		using CHSEL14 = zol::bit_rw<CHSELR, 14>;
		using CHSEL13 = zol::bit_rw<CHSELR, 13>;
		using CHSEL12 = zol::bit_rw<CHSELR, 12>;
		using CHSEL11 = zol::bit_rw<CHSELR, 11>;
		using CHSEL10 = zol::bit_rw<CHSELR, 10>;
		using CHSEL9  = zol::bit_rw<CHSELR, 9>;
		using CHSEL8  = zol::bit_rw<CHSELR, 8>;
		using CHSEL7  = zol::bit_rw<CHSELR, 7>;
		using CHSEL6  = zol::bit_rw<CHSELR, 6>;
		using CHSEL5  = zol::bit_rw<CHSELR, 5>;
		using CHSEL4  = zol::bit_rw<CHSELR, 4>;
		using CHSEL3  = zol::bit_rw<CHSELR, 3>;
		using CHSEL2  = zol::bit_rw<CHSELR, 2>;
		using CHSEL1  = zol::bit_rw<CHSELR, 1>;
		using CHSEL0  = zol::bit_rw<CHSELR, 0>;

	private:
		chselr() {}
	};

	struct dr {
		using DATA = zol::field_r<DR, 0, 16>;

	private:
		dr() {}
	};

	struct calfact {
		using CALIFACT = zol::field_rw<CALFACT, 0, 7>;

	private:
		calfact() {}
	};

	struct ccr {
		using LFMEN	 = zol::bit_rw<CCR, 25>;
		using VLCDEN = zol::bit_rw<CCR, 24>;
		using TSEN	 = zol::bit_rw<CCR, 23>;
		using VREFEN = zol::bit_rw<CCR, 22>;
		using PRESC	 = zol::field_rw<CCR, 18, 4>;

	private:
		ccr() {}
	};

	static void power_on() { RCC::apb2enr::ADCEN::write(on); }

	static void calibrate() {
		if (cr::ADEN::read() != 0) {
			cr::ADDIS::set();
		}
		cr::ADCAL::set();
		while (isr::EOCAL::read() == 0) {
			asm("nop");
		}
	}

	static void enable() {
		isr::ADRDY::clear();
		cr::ADEN::set();
		if (cfgr1::AUTOFF::read() == 0) {
			while (isr::ADRDY::read() == 0) {
				asm("nop");
			}
		}
	}

	static void disable() {
		if (cr::ADSTART::read() != 0) {
			cr::ADSTP::set();
		}
		while (cr::ADSTP::read()) {
			asm("nop");
		}
		cr::ADDIS::set();
		while (cr::ADEN::read() != 0) {
			asm("nop");
		}
	}

private:
	ADC() {}
};