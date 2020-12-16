#pragma once

#include "register.h"

#include <cstdint>

template<uint64_t address>
struct LPTIMx {
	using ISR  = zol::reg<uint32_t, address + 0x0>;
	using ICR  = zol::reg<uint32_t, address + 0x4>;
	using IER  = zol::reg<uint32_t, address + 0x8>;
	using CFGR = zol::reg<uint32_t, address + 0xC>;
	using CR   = zol::reg<uint32_t, address + 0x10>;
	using CMP  = zol::reg<uint32_t, address + 0x14>;
	using ARR  = zol::reg<uint32_t, address + 0x18>;
	using CNT  = zol::reg<uint32_t, address + 0x1C>;

private:
	LPTIMx();
};

using LPTIM1 = LPTIMx<0x4000'7C00>;
