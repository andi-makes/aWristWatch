#pragma once

#include <cinttypes>
#include <register.h>

template<uint64_t address>
struct GPIOx {
	using MODER	  = zol::reg<uint32_t, address + 0x0>;
	using OTYPER  = zol::reg<uint32_t, address + 0x4>;
	using OSPEEDR = zol::reg<uint32_t, address + 0x8>;
	using PUPDR	  = zol::reg<uint32_t, address + 0xC>;
	using IDR	  = zol::reg<uint32_t, address + 0x10>;
	using ODR	  = zol::reg<uint32_t, address + 0x14>;
	using BSRR	  = zol::reg<uint32_t, address + 0x18>;
	using LCKR	  = zol::reg<uint32_t, address + 0x1C>;
	using AFRL	  = zol::reg<uint32_t, address + 0x20>;
	using AFRH	  = zol::reg<uint32_t, address + 0x24>;
	using BRR	  = zol::reg<uint32_t, address + 0x28>;

private:
	GPIOx();
};
constexpr uint64_t GPIOA_ADDR = 0x5000'0000;

using GPIOA = GPIOx<GPIOA_ADDR>;