#pragma once

#include "pwr.h"
#include "rcc.h"

#include <cinttypes>
#include <register.h>

struct RTC {
	static constexpr uint64_t address = 0x4000'2800;

	using TR	   = zol::reg<uint32_t, address + 0x0>;
	using DR	   = zol::reg<uint32_t, address + 0x4>;
	using CR	   = zol::reg<uint32_t, address + 0x8>;
	using ISR	   = zol::reg<uint32_t, address + 0xC>;
	using PRER	   = zol::reg<uint32_t, address + 0x10>;
	using WUTR	   = zol::reg<uint32_t, address + 0x14>;
	using ALRMAR   = zol::reg<uint32_t, address + 0x1C>;
	using ALRMBR   = zol::reg<uint32_t, address + 0x20>;
	using WPR	   = zol::reg<uint32_t, address + 0x24>;
	using SSR	   = zol::reg<uint32_t, address + 0x28>;
	using SHIFTR   = zol::reg<uint32_t, address + 0x2C>;
	using TSTR	   = zol::reg<uint32_t, address + 0x30>;
	using TSDR	   = zol::reg<uint32_t, address + 0x34>;
	using TSSSR	   = zol::reg<uint32_t, address + 0x38>;
	using CALR	   = zol::reg<uint32_t, address + 0x3C>;
	using TAMPCR   = zol::reg<uint32_t, address + 0x40>;
	using ALRMASSR = zol::reg<uint32_t, address + 0x44>;
	using ALRMBSSR = zol::reg<uint32_t, address + 0x48>;
	using OR	   = zol::reg<uint32_t, address + 0x4C>;
	using BKP0R	   = zol::reg<uint32_t, address + 0x50>;
	using BKP1R	   = zol::reg<uint32_t, address + 0x54>;
	using BKP2R	   = zol::reg<uint32_t, address + 0x58>;
	using BKP3R	   = zol::reg<uint32_t, address + 0x5C>;
	using BKP4R	   = zol::reg<uint32_t, address + 0x60>;

	static inline void disable_write_protect() {
		WPR::set_reg(0xCA);
		WPR::set_reg(0x53);
	}

	static inline void enable_write_protect() { WPR::set_reg(0xFF); }

	static void enable() {
		PWR::enable();
		PWR::set(pwr::cr::DBP);	   // Disable backup write protection

		RCC::CSR::set_bit(8);				   // CSR_LSEON
		while (RCC::CSR::get_bit(9) == 0) {	   // CSR_LSERDY
			asm("nop");
		}

		RCC::CSR::set_bit(16);	  // RTCSEL (select LSE clock)
		RCC::CSR::set_bit(18);	  // RTCEN
	}

private:
	RTC();
};