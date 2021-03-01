#pragma once

#include <cinttypes>
#include <register.hpp>

struct NVIC {
	constexpr static uint32_t ISER_ADDR = 0xE000'E100;	  // Set Enable
	constexpr static uint32_t ICER_ADDR = 0xE000'E180;	  // Clear Enable
	constexpr static uint32_t ISPR_ADDR = 0xE000'E200;	  // Set Pending
	constexpr static uint32_t ICPR_ADDR = 0xE000'E280;	  // Clear Pending

	constexpr static uint32_t IPR_ADDR = 0xE000'E400;	 // Priority

	using ISER = zol::reg<uint32_t, ISER_ADDR>;
	using ICER = zol::reg<uint32_t, ICER_ADDR>;

	using ISPR = zol::reg<uint32_t, ISPR_ADDR>;
	using ICPR = zol::reg<uint32_t, ICPR_ADDR>;

	using IPR0 = zol::reg<uint32_t, IPR_ADDR>;
	using IPR1 = zol::reg<uint32_t, IPR_ADDR + 0x4>;
	using IPR2 = zol::reg<uint32_t, IPR_ADDR + 0x4 * 2>;
	using IPR3 = zol::reg<uint32_t, IPR_ADDR + 0x4 * 3>;
	using IPR4 = zol::reg<uint32_t, IPR_ADDR + 0x4 * 4>;
	using IPR5 = zol::reg<uint32_t, IPR_ADDR + 0x4 * 5>;
	using IPR6 = zol::reg<uint32_t, IPR_ADDR + 0x4 * 6>;
	using IPR7 = zol::reg<uint32_t, IPR_ADDR + 0x4 * 7>;

	NVIC() = delete;
};