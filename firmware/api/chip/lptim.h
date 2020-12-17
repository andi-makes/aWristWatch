#pragma once

#include "register.h"

#include <cstdint>

template<uint64_t address>
struct LPTIMx {
	// ISR
	static constexpr uint8_t DOWN	 = 6;
	static constexpr uint8_t UP		 = 5;
	static constexpr uint8_t ARROK	 = 4;
	static constexpr uint8_t CMPOK	 = 3;
	static constexpr uint8_t EXTTRIG = 2;
	static constexpr uint8_t ARRM	 = 1;
	static constexpr uint8_t CMPM	 = 0;

	// ICR
	static constexpr uint8_t DOWNCF	   = 6;
	static constexpr uint8_t UPCF	   = 5;
	static constexpr uint8_t ARROKCF   = 4;
	static constexpr uint8_t CMPOKCF   = 3;
	static constexpr uint8_t EXTTRIGCF = 2;
	static constexpr uint8_t ARRMCF	   = 1;
	static constexpr uint8_t CMPMCF	   = 0;

	// IER
	static constexpr uint8_t DOWNIE	   = 6;
	static constexpr uint8_t UPIE	   = 5;
	static constexpr uint8_t ARROKIE   = 4;
	static constexpr uint8_t CMPOKIE   = 3;
	static constexpr uint8_t EXTTRIGIE = 2;
	static constexpr uint8_t ARRMIE	   = 1;
	static constexpr uint8_t CMPMIE	   = 0;

	// CFGR
	static constexpr uint8_t ENC	   = 24;
	static constexpr uint8_t COUNTMODE = 23;
	static constexpr uint8_t PRELOAD   = 22;
	static constexpr uint8_t WAVEPOL   = 21;
	static constexpr uint8_t WAVE	   = 20;
	static constexpr uint8_t TIMOUT	   = 19;
	static constexpr uint8_t CKSEL	   = 0;

	enum class TRIGEN : uint8_t {
		SOFTWARE = 0,
		RISING	 = 1,
		FALLING	 = 2,
		BOTH	 = 3
	};

	enum class TRIGSEL : uint8_t {
		EXT_TRIG0 = 0,
		EXT_TRIG1 = 1,
		EXT_TRIG2 = 2,
		EXT_TRIG3 = 3,
		EXT_TRIG4 = 4,
		EXT_TRIG5 = 5,
		EXT_TRIG6 = 6,
		EXT_TRIG7 = 7
	};

	enum class PRESC : uint8_t {
		DIV_1	= 0,
		DIV_2	= 1,
		DIV_4	= 2,
		DIV_8	= 3,
		DIV_16	= 4,
		DIV_32	= 5,
		DIV_64	= 6,
		DIV_128 = 7
	};

	enum class TRGFLT : uint8_t {	 // TODO: Fix this in .clang-format
		ANY	  = 0,
		CLK_2 = 1,
		CLK_4 = 2,
		CLK_8 = 3
	};

	enum class CKFLT : uint8_t {	//
		ANY	  = 0,
		CLK_2 = 1,
		CLK_4 = 2,
		CLK_8 = 3
	};

	enum class CKPOL : uint8_t {	//
		RISING_ENC1	 = 0,
		FALLING_ENC2 = 1,
		BOTH_ENC3	 = 2
	};

	// CR
	static constexpr uint8_t CNTSTRT = 2;
	static constexpr uint8_t SNGSTRT = 1;
	static constexpr uint8_t ENABLE	 = 0;

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
