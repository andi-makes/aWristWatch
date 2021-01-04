#pragma once

#include <cinttypes>
#include <register.h>

struct RCC {
	static constexpr zol::addr_t address = 0x4002'1000;

	using CR		= zol::reg<uint32_t, address + 0x0>;
	using ICSCR		= zol::reg<uint32_t, address + 0x4>;
	using CFGR		= zol::reg<uint32_t, address + 0xC>;
	using CIER		= zol::reg<uint32_t, address + 0x10>;
	using CIFR		= zol::reg<uint32_t, address + 0x14>;
	using CICR		= zol::reg<uint32_t, address + 0x18>;
	using IOPRSTR	= zol::reg<uint32_t, address + 0x1C>;
	using AHBRSTR	= zol::reg<uint32_t, address + 0x20>;
	using APB2RSTR	= zol::reg<uint32_t, address + 0x24>;
	using APB1RSTR	= zol::reg<uint32_t, address + 0x28>;
	using IOPENR	= zol::reg<uint32_t, address + 0x2C>;
	using AHBENR	= zol::reg<uint32_t, address + 0x30>;
	using APB2ENR	= zol::reg<uint32_t, address + 0x34>;
	using APB1ENR	= zol::reg<uint32_t, address + 0x38>;
	using IOPSMENR	= zol::reg<uint32_t, address + 0x3C>;
	using AHBSMENR	= zol::reg<uint32_t, address + 0x40>;
	using APB2SMENR = zol::reg<uint32_t, address + 0x44>;
	using APB1SMENR = zol::reg<uint32_t, address + 0x48>;
	using CCIPR		= zol::reg<uint32_t, address + 0x4C>;
	using CSR		= zol::reg<uint32_t, address + 0x50>;

private:
	RCC();
};
