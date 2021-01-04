#pragma once

#include <cinttypes>
#include <register.h>

struct SYSCFG {
	static constexpr uint32_t address = 0;

	using CFGR1		 = zol::reg<uint32_t, address + 0x0>;
	using CFGR2		 = zol::reg<uint32_t, address + 0x4>;
	using EXTICR1	 = zol::reg<uint32_t, address + 0x8>;
	using EXTICR2	 = zol::reg<uint32_t, address + 0xC>;
	using EXTICR3	 = zol::reg<uint32_t, address + 0x10>;
	using EXTICR4	 = zol::reg<uint32_t, address + 0x14>;
	using COMP1_CTRL = zol::reg<uint32_t, address + 0x18>;
	using COMP2_CTRL = zol::reg<uint32_t, address + 0x1C>;
	using CFGR3		 = zol::reg<uint32_t, address + 0x20>;

	static void enable() { RCC::APB2ENR::set_bit(0); }

private:
	SYSCFG() {}
};
