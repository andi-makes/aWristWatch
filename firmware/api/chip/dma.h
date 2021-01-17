#pragma once

#include "rcc.h"

#include <bits.h>
#include <fields.h>
#include <register.h>

struct DMA {
	static constexpr zol::addr_t address = 0X4002'0000;

	using ISR  = zol::reg<uint32_t, address + 0x0>;
	using IFCR = zol::reg<uint32_t, address + 0x4>;

	template<int x>
	using CCRx = zol::reg<uint32_t, address + 0x8 + 0x14 * (x - 1)>;

	template<int x>
	using CNDTRx = zol::reg<uint32_t, address + 0xC + 0x14 * (x - 1)>;

	template<int x>
	using CPARx = zol::reg<uint32_t, address + 0x10 + 0x14 * (x - 1)>;

	template<int x>
	using CMARx = zol::reg<uint32_t, address + 0x14 + 0x14 * (x - 1)>;

	using CSELR = zol::reg<uint32_t, address + 0xA8>;

	static void power_on() { RCC::ahbenr::DMAEN::write(on); }

private:
	DMA() {}
};