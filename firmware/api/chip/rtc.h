#pragma once

#include "pwr.h"
#include "rcc.h"

#include <bits.h>
#include <cinttypes>
#include <fields.h>
#include <register.h>

namespace rtc {
	enum class cr : uint8_t {
		TSEDGE	= 3,
		REFCKON = 4,
		BYPSHAD = 5,
		FMT		= 6,
		ALRAE	= 8,
		ALRBE	= 9,
		WUTE	= 10,
		TSE		= 11,
		ALRAIE	= 12,
		ALRBIE	= 13,
		WUTIE	= 14,
		TSIE	= 15,
		ADD1H	= 16,
		SUB1H	= 17,
		BKP		= 18,
		COSEL	= 19,
		POL		= 20,
		COE		= 23
	};

	enum class wucksel : uint8_t {
		DIV_16		 = 0,
		DIV_8		 = 1,
		DIV_4		 = 2,
		DIV_2		 = 3,
		CK_SPRE		 = 4,
		CK_SPRE_PLUS = 6
	};

	enum class osel : uint8_t {
		DISABLED = 0,
		ALARM_A	 = 1,
		ALARM_B	 = 2,
		WAKEUP	 = 3
	};

	enum class isr : uint8_t {
		ALRAWF	= 0,	 // r
		ALRBWF	= 1,	 // r
		WUTWF	= 2,	 // r
		SHPF	= 3,	 // r
		INITS	= 4,	 // r
		RSF		= 5,	 // rc_w0
		INITF	= 6,	 // r
		INIT	= 7,	 // rw
		ALRAF	= 8,	 // rc_w0
		ALRBF	= 9,	 // rc_w0
		WUTF	= 10,	 // rc_w0
		TSF		= 11,	 // rc_w0
		TSOVF	= 12,	 // rc_w0
		TAMP1F	= 13,	 // rc_w0
		TAMP2F	= 14,	 // rc_w0
		TAMP3F	= 15,	 // rc_w0
		RECALPF = 16	 // r
	};
};

struct RTC {
	static constexpr zol::addr_t address = 0x4000'2800;

	using TR	   = zol::reg<uint32_t, address + 0x0>;
	using DR	   = zol::reg<uint32_t, address + 0x4>;
	using CR	   = zol::reg<uint32_t, address + 0x8>;
	using ISR	   = zol::reg<uint32_t, address + 0xC>;
	using PRER	   = zol::reg<uint32_t, address + 0x10>;
	using WUTR	   = zol::reg<uint32_t, address + 0x14>;
	using ALRMAR   = zol::reg<uint32_t, address + 0x1C>;
	using ALRMBR   = zol::reg<uint32_t, address + 0x20>;
	using WPR	   = zol::reg<uint32_t, address + 0x24>;
	using SSR	   = zol::reg<uint32_t, address + 0x28>;
	using SHIFTR   = zol::reg<uint32_t, address + 0x2C>;
	using TSTR	   = zol::reg<uint32_t, address + 0x30>;
	using TSDR	   = zol::reg<uint32_t, address + 0x34>;
	using TSSSR	   = zol::reg<uint32_t, address + 0x38>;
	using CALR	   = zol::reg<uint32_t, address + 0x3C>;
	using TAMPCR   = zol::reg<uint32_t, address + 0x40>;
	using ALRMASSR = zol::reg<uint32_t, address + 0x44>;
	using ALRMBSSR = zol::reg<uint32_t, address + 0x48>;
	using OR	   = zol::reg<uint32_t, address + 0x4C>;
	using BKP0R	   = zol::reg<uint32_t, address + 0x50>;
	using BKP1R	   = zol::reg<uint32_t, address + 0x54>;
	using BKP2R	   = zol::reg<uint32_t, address + 0x58>;
	using BKP3R	   = zol::reg<uint32_t, address + 0x5C>;
	using BKP4R	   = zol::reg<uint32_t, address + 0x60>;

	// CR
	struct cr {
		using COE	  = zol::bit_rw<CR, 23>;
		using OSEL	  = zol::field<CR, 21, 2>;
		using POL	  = zol::bit_rw<CR, 20>;
		using COSEL	  = zol::bit_rw<CR, 19>;
		using BKP	  = zol::bit_rw<CR, 18>;
		using SUB1H	  = zol::bit_w<CR, 17>;
		using ADD1H	  = zol::bit_w<CR, 16>;
		using TSIE	  = zol::bit_rw<CR, 15>;
		using WUTIE	  = zol::bit_rw<CR, 14>;
		using ALRBIE  = zol::bit_rw<CR, 13>;
		using ALRAIE  = zol::bit_rw<CR, 12>;
		using TSE	  = zol::bit_rw<CR, 11>;
		using WUTE	  = zol::bit_rw<CR, 10>;
		using ALRBE	  = zol::bit_rw<CR, 9>;
		using ALRAE	  = zol::bit_rw<CR, 8>;
		using FMT	  = zol::bit_rw<CR, 6>;
		using BYPSHAD = zol::bit_rw<CR, 5>;
		using REFCKON = zol::bit_rw<CR, 4>;
		using TSEDGE  = zol::bit_rw<CR, 3>;
		using WUCKSEL = zol::field<CR, 0, 3>;

	private:
		cr() {}
	};

	struct isr {
		using RECALPF = zol::bit_r<ISR, 16>;
		using TAMP3F  = zol::bit_rc0<ISR, 15>;
		using TAMP2F  = zol::bit_rc0<ISR, 14>;
		using TAMP1F  = zol::bit_rc0<ISR, 13>;
		using TSOVF	  = zol::bit_rc0<ISR, 12>;
		using TSF	  = zol::bit_rc0<ISR, 11>;
		using WUTF	  = zol::bit_rc0<ISR, 10>;
		using ALRBF	  = zol::bit_rc0<ISR, 9>;
		using ALRAF	  = zol::bit_rc0<ISR, 8>;
		using INIT	  = zol::bit_rw<ISR, 7>;
		using INITF	  = zol::bit_r<ISR, 6>;
		using RSF	  = zol::bit_rc0<ISR, 5>;
		using INITS	  = zol::bit_r<ISR, 4>;
		using SHPF	  = zol::bit_r<ISR, 3>;
		using WUTWF	  = zol::bit_r<ISR, 2>;
		using ALRBWF  = zol::bit_r<ISR, 1>;
		using ALRAWF  = zol::bit_r<ISR, 0>;

	private:
		isr() {}
	};

	struct prer {
		using PREDIV_A = zol::field<PRER, 16, 7>;
		using PREDIV_S = zol::field<PRER, 0, 15>;

	private:
		prer() {}
	};

	[[gnu::always_inline]] static inline void disable_write_protect() {
		WPR::set_reg(0xCA);
		WPR::set_reg(0x53);
	}

	[[gnu::always_inline]] static inline void enable_write_protect() {
		WPR::set_reg(0xFF);
	}

	static void enable() {
		PWR::enable();
		PWR::set(pwr::cr::DBP);	   // Disable backup write protection

		RCC::CSR::set_bit(8);				   // CSR_LSEON
		while (RCC::CSR::get_bit(9) == 0) {	   // CSR_LSERDY
			asm("nop");
		}

		RCC::CSR::set_bit(16);	  // RTCSEL (select LSE clock)
		RCC::CSR::set_bit(18);	  // RTCEN
	}

	static void set_time(std::integral auto hrs,
						 std::integral auto min,
						 std::integral auto sec) {
		disable_write_protect();
		// Enter initialization mode
		// ISR::set_bit(7);
		isr::INIT::write(on);
		// Wait until registers can be updated
		// while (ISR::get_bit(6) == 0) {
		while (isr::INITF::read() == 0) {
			asm("nop");
		}

		// Update time
		TR::set_reg(sec | (min << 8) | (hrs << 16));

		// Exit initialization mode
		// ISR::clear_bit(7);
		isr::INIT::write(off);

		enable_write_protect();
	}

	static void set_date(std::integral auto date,
						 std::integral auto month,
						 std::integral auto year) {
		disable_write_protect();
		// Enter initialization mode
		// ISR::set_bit(7);
		isr::INIT::write(on);
		// Wait until registers can be updated
		// while (ISR::get_bit(6) == 0) {
		while (isr::INITF::read() == 0) {
			asm("nop");
		}

		// Update date
		DR::set_reg(date | (month << 8) | (year << 16));

		// Exit initialization mode
		// ISR::clear_bit(7);
		isr::INIT::write(off);

		enable_write_protect();
	}

	static void set_time_and_date(std::integral auto hrs,
								  std::integral auto min,
								  std::integral auto sec,
								  std::integral auto date,
								  std::integral auto month,
								  std::integral auto year) {
		disable_write_protect();
		// Enter initialization mode
		// ISR::set_bit(7);
		isr::INIT::write(on);
		// Wait until registers can be updated
		// while (ISR::get_bit(6) == 0) {
		while (isr::INITF::read() == 0) {
			asm("nop");
		}

		// Update time
		TR::set_reg(sec | (min << 8) | (hrs << 16));

		// Update date
		DR::set_reg(date | (month << 8) | (year << 16));

		// Exit initialization mode
		// ISR::clear_bit(7);
		isr::INIT::write(off);

		enable_write_protect();
	}

private:
	RTC();
};