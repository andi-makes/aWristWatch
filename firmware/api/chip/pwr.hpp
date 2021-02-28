#pragma once

#include "rcc.hpp"

#include <cinttypes>
#include <register.hpp>

namespace pwr {
	enum class cr : uint8_t {
		LPSDSR	   = 0,
		PDDR	   = 1,
		CWWUF	   = 2,
		CSBF	   = 3,
		PVDE	   = 4,
		DBP		   = 8,
		ULP		   = 9,
		FWU		   = 10,
		DS_EE_KOFF = 13,
		LPRUN	   = 14,
		LPDS	   = 16
	};

	enum class pls : uint8_t {
		V1_9 = 0,
		V2_1 = 1,
		V2_3 = 2,
		V2_5 = 3,
		V2_7 = 4,
		V2_9 = 5,
		V3_1 = 6,
		VEXT = 7
	};

	enum class vos : uint8_t {	  //
		V1_8 = 1,
		V1_5 = 2,
		V1_2 = 3
	};

	enum class csr : uint8_t {
		WUF			= 0,
		SBF			= 1,
		PVDO		= 2,
		VREFINTRDYF = 3,
		VOSF		= 4,
		REGLPF		= 5,
		EWUP1		= 8,
		EWUP2		= 9,
		EWUP3		= 10,
	};
}

struct PWR {
	static constexpr zol::addr_t address = 0X4000'7000;

	using CR  = zol::reg<uint32_t, address + 0x0>;
	using CSR = zol::reg<uint32_t, address + 0x4>;

	static void enable() {	  // RCC::APB1ENR::set_bit(28);
		RCC::apb1enr::PWREN::write(on);
	}

	static void set(pwr::cr c) { CR::set_bit(uint8_t(c)); }
	static void set(pwr::pls p) {
		CR::and_reg(~(0b111 << 5));
		CR::or_reg(uint8_t(p) << 5);
	}
	static void set(pwr::vos v) {
		CR::and_reg(~(0b11 << 11));
		CR::or_reg(uint8_t(v) << 11);
	}
	static void set(pwr::csr c) { CSR::set_bit(uint8_t(c)); }

private:
	PWR();
};