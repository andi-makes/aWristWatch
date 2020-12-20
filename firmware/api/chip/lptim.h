#pragma once

#include "register.h"

#include <cstdint>

namespace lptim {
	enum class isr : uint8_t {
		CMPM	= 0,
		ARRM	= 1,
		EXTTRIG = 2,
		CMPOK	= 3,
		ARROK	= 4,
		UP		= 5,
		DOWN	= 6
	};

	enum class icr : uint8_t {
		CMPMCF	  = 0,
		ARRMCF	  = 1,
		EXTTRIGCF = 2,
		CMPOKCF	  = 3,
		ARROKCF	  = 4,
		UPCF	  = 5,
		DOWNCF	  = 6
	};

	enum class ier : uint8_t {
		CMPMIE	  = 0,
		ARRMIE	  = 1,
		EXTTRIGIE = 2,
		CMPOKIE	  = 3,
		ARROKIE	  = 4,
		UPIE	  = 5,
		DOWNIE	  = 6
	};

	enum class cfgr : uint8_t {
		CKSEL	  = 0,
		TIMOUT	  = 19,
		WAVE	  = 20,
		WAVEPOL	  = 21,
		PRELOAD	  = 22,
		COUNTMODE = 23,
		ENC		  = 24
	};

	enum class trigen : uint8_t {
		SOFTWARE = 0,
		RISING	 = 1,
		FALLING	 = 2,
		BOTH	 = 3
	};

	enum class trigsel : uint8_t {
		EXT_TRIG0 = 0,
		EXT_TRIG1 = 1,
		EXT_TRIG2 = 2,
		EXT_TRIG3 = 3,
		EXT_TRIG4 = 4,
		EXT_TRIG5 = 5,
		EXT_TRIG6 = 6,
		EXT_TRIG7 = 7
	};

	enum class presc : uint8_t {
		DIV_1	= 0,
		DIV_2	= 1,
		DIV_4	= 2,
		DIV_8	= 3,
		DIV_16	= 4,
		DIV_32	= 5,
		DIV_64	= 6,
		DIV_128 = 7
	};

	enum class trgflt : uint8_t {	 // TODO: Fix this in .clang-format
		ANY	  = 0,
		CLK_2 = 1,
		CLK_4 = 2,
		CLK_8 = 3
	};

	enum class ckflt : uint8_t {	//
		ANY	  = 0,
		CLK_2 = 1,
		CLK_4 = 2,
		CLK_8 = 3
	};

	enum class ckpol : uint8_t {	//
		RISING_ENC1	 = 0,
		FALLING_ENC2 = 1,
		BOTH_ENC3	 = 2
	};

	enum class cr : uint8_t {	 //
		ENABLE	= 0,
		SNGSTRT = 1,
		CNTSTRT = 2
	};
};

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

	// TODO: implement get functions

	static bool get(lptim::isr i) { return ISR::get_bit(uint8_t(i)); }

	static void clear_interrupt_pending(lptim::icr i) {
		ICR::set_bit(uint8_t(i));
	}

	static void set(lptim::ier i, bool b) {
		if (b) {
			IER::set_bit(uint8_t(i));
		} else {
			IER::clear_bit(uint8_t(i));
		}
	}

	static bool get(lptim::ier i) { return IER::get_bit(uint8_t(i)); }

	static void set(lptim::cfgr bit, bool level) {
		if (level) {
			CFGR::set_bit(uint8_t(bit));
		} else {
			CFGR::clear_bit(uint8_t(bit));
		}
	}

	static bool get(lptim::cfgr bit) { return CFGR::get_bit(uint8_t(bit)); }

	static void set(lptim::cr bit, bool level) {
		if (level) {
			CR::set_bit(uint8_t(bit));
		} else {
			CR::clear_bit(uint8_t(bit));
		}
	}

	static bool get(lptim::cr bit) { return CR::get_bit(uint8_t(bit)); }

	static void set(lptim::trigen t) {
		CFGR::and_reg(~(0b11 << 17));
		CFGR::or_reg(uint8_t(t) << 17);
	}

	// TODO: If I ever need to read it, implement the function.
	// static lptim::trigen get(lptim::trigen) {
	// 	return (CFGR::get_reg() & (0b11 << 17)) >> 17;
	// }

	static void set(lptim::trigsel t) {
		CFGR::and_reg(~(0b111 << 13));
		CFGR::or_reg(uint8_t(t) << 13);
	}

	static void set(lptim::presc p) {
		CFGR::and_reg(~(0b111 << 9));
		CFGR::or_reg(uint8_t(p) << 9);
	}

	static void set(lptim::trgflt t) {
		CFGR::and_reg(~(0b11 << 6));
		CFGR::or_reg(uint8_t(t) << 6);
	}

	static void set(lptim::ckflt c) {
		CFGR::and_reg(~(0b11 << 3));
		CFGR::or_reg(uint8_t(c) << 3);
	}

	static void set(lptim::ckpol c) {
		CFGR::and_reg(~(0b11 << 1));
		CFGR::or_reg(uint8_t(c) << 1);
	}

private:
	LPTIMx();
};

using LPTIM1 = LPTIMx<0x4000'7C00>;
