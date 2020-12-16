#pragma once

#include "rcc.h"

#include <cinttypes>
#include <register.h>

struct PWR {
	static constexpr uint64_t address = 0X4000'7000;

	using CR  = zol::reg<uint32_t, address + 0x0>;
	using CSR = zol::reg<uint32_t, address + 0x4>;

	static inline void enable() { RCC::APB1ENR::set_bit(28); }

private:
	PWR();
};