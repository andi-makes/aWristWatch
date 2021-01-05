#pragma once

#include <bits.h>
#include <cinttypes>
#include <fields.h>
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

	struct cr {
		using PLLRDY	 = zol::bit_r<CR, 25>;
		using PLLON		 = zol::bit_rw<CR, 24>;
		using RTCPRE	 = zol::field_rw<CR, 20, 2>;
		using CSSHSEON	 = zol::bit_rw<CR, 19>;
		using HSEBYP	 = zol::bit_rw<CR, 18>;
		using HSERDY	 = zol::bit_r<CR, 17>;
		using HSEON		 = zol::bit_rw<CR, 16>;
		using MSIRDY	 = zol::bit_r<CR, 9>;
		using MSION		 = zol::bit_rw<CR, 8>;
		using HSI16OUTEN = zol::bit_rw<CR, 5>;
		using HSI16DIVF	 = zol::bit_r<CR, 4>;
		using HSI16DIVEN = zol::bit_rw<CR, 3>;
		using HSI16RDYF	 = zol::bit_r<CR, 2>;
		using HSI16KERON = zol::bit_rw<CR, 1>;
		using HSI16ON	 = zol::bit_rw<CR, 0>;

	private:
		cr() {}
	};

	struct icscr {
		using MSITRIM	= zol::field_rw<ICSCR, 24, 8>;
		using MSICAL	= zol::field_r<ICSCR, 16, 8>;
		using MSIRANGE	= zol::field_rw<ICSCR, 13, 3>;
		using HSI16TRIM = zol::field_rw<ICSCR, 8, 5>;
		using HSI16CAL	= zol::field_r<ICSCR, 0, 8>;

	private:
		icscr() {}
	};

	struct cfgr {
		using MCOPRE   = zol::field_rw<CFGR, 28, 3>;
		using MCOSEL   = zol::field_rw<CFGR, 24, 4>;
		using PLLDIV   = zol::field_rw<CFGR, 22, 2>;
		using PLLMUL   = zol::field_rw<CFGR, 18, 4>;
		using PLLSRC   = zol::bit_rw<CFGR, 16>;
		using STOPWUCK = zol::bit_rw<CFGR, 15>;
		using PPRE2	   = zol::field_rw<CFGR, 11, 3>;
		using PPRE1	   = zol::field_rw<CFGR, 8, 3>;
		using HPRE	   = zol::field_rw<CFGR, 4, 4>;
		using SWS	   = zol::field_r<CFGR, 2, 2>;
		using SW	   = zol::field_rw<CFGR, 0, 2>;

	private:
		cfgr() {}
	};

	struct cier {
		// Not sure about this bit, but it would make sense. It isn't in the
		// datasheet tho:
		// using CSSHSE	 = zol::bit_rw<CIER, 8>;
		using CSSLSE	 = zol::bit_rw<CIER, 7>;
		using MSIRDYIE	 = zol::bit_rw<CIER, 5>;
		using PLLRDYIE	 = zol::bit_rw<CIER, 4>;
		using HSERDYIE	 = zol::bit_rw<CIER, 3>;
		using HSI16RDYIE = zol::bit_rw<CIER, 2>;
		using LSERDYIE	 = zol::bit_rw<CIER, 1>;
		using LSIRDYIE	 = zol::bit_rw<CIER, 0>;

	private:
		cier() {}
	};

	struct cifr {
		using CSSHSEF	= zol::bit_r<CIFR, 8>;
		using CSSLSEF	= zol::bit_r<CIFR, 7>;
		using MSIRDYF	= zol::bit_r<CIFR, 5>;
		using PLLRDYF	= zol::bit_r<CIFR, 4>;
		using HSERDYF	= zol::bit_r<CIFR, 3>;
		using HSI16RDYF = zol::bit_r<CIFR, 2>;
		using LSERDYF	= zol::bit_r<CIFR, 1>;
		using LSIRDYF	= zol::bit_r<CIFR, 0>;

	private:
		cifr() {}
	};

	struct cicr {
		using CSSHSEC	= zol::bit_w<CICR, 8>;
		using CSSLSEC	= zol::bit_w<CICR, 7>;
		using MSIRDYC	= zol::bit_w<CICR, 5>;
		using PLLRDYC	= zol::bit_w<CICR, 4>;
		using HSERDYC	= zol::bit_w<CICR, 3>;
		using HSI16RDYC = zol::bit_w<CICR, 2>;
		using LSERDYC	= zol::bit_w<CICR, 1>;
		using LSIRDYC	= zol::bit_w<CICR, 0>;

	private:
		cicr() {}
	};

	struct ioprstr {
		using IOPHRST = zol::bit_rw<IOPRSTR, 7>;
		using IOPERST = zol::bit_rw<IOPRSTR, 4>;
		using IOPDRST = zol::bit_rw<IOPRSTR, 3>;
		using IOPCRST = zol::bit_rw<IOPRSTR, 2>;
		using IOPBRST = zol::bit_rw<IOPRSTR, 1>;
		using IOPARST = zol::bit_rw<IOPRSTR, 0>;

	private:
		ioprstr() {}
	};

	struct ahbrstr {
		using CRYPRST = zol::bit_rw<AHBRSTR, 24>;
		using CRCRST  = zol::bit_rw<AHBRSTR, 12>;
		using MIFRST  = zol::bit_rw<AHBRSTR, 8>;
		using DMARST  = zol::bit_rw<AHBRSTR, 0>;

	private:
		ahbrstr() {}
	};

	struct apb2rstr {
		using DBGRST	= zol::bit_rw<APB2RSTR, 22>;
		using USART1RST = zol::bit_rw<APB2RSTR, 14>;
		using SPI1RST	= zol::bit_rw<APB2RSTR, 12>;
		using ADCRST	= zol::bit_rw<APB2RSTR, 9>;
		using TIM22RST	= zol::bit_rw<APB2RSTR, 5>;
		using TIM21RST	= zol::bit_rw<APB2RSTR, 2>;
		using SYSCFGRST = zol::bit_rw<APB2RSTR, 0>;

	private:
		apb2rstr() {}
	};

	struct apb1rstr {
		using LPTIM1RST = zol::bit_rw<APB1RSTR, 31>;
		using ISC3RST	= zol::bit_rw<APB1RSTR, 30>;
		using PWRRST	= zol::bit_rw<APB1RSTR, 28>;
		using ISC2RST	= zol::bit_rw<APB1RSTR, 22>;
		using ISC1RST	= zol::bit_rw<APB1RSTR, 21>;
		using USART5RST = zol::bit_rw<APB1RSTR, 20>;
		using USART4RST = zol::bit_rw<APB1RSTR, 19>;
		using USART1RST = zol::bit_rw<APB1RSTR, 18>;
		using USART2RST = zol::bit_rw<APB1RSTR, 17>;
		using SPI2RST	= zol::bit_rw<APB1RSTR, 14>;
		using WWDGRST	= zol::bit_rw<APB1RSTR, 11>;
		using TIM7RST	= zol::bit_rw<APB1RSTR, 5>;
		using TIM6RST	= zol::bit_rw<APB1RSTR, 4>;
		using TIM3RST	= zol::bit_rw<APB1RSTR, 1>;
		using TIM2RST	= zol::bit_rw<APB1RSTR, 0>;

	private:
		apb1rstr() {}
	};

	struct iopenr {
		using IOPHEN = zol::bit_rw<IOPENR, 7>;
		using IOPEEN = zol::bit_rw<IOPENR, 4>;
		using IOPDEN = zol::bit_rw<IOPENR, 3>;
		using IOPCEN = zol::bit_rw<IOPENR, 2>;
		using IOPBEN = zol::bit_rw<IOPENR, 1>;
		using IOPAEN = zol::bit_rw<IOPENR, 0>;

	private:
		iopenr() {}
	};

	struct ahbenr {
		using CRYPEN = zol::bit_rw<AHBENR, 24>;
		using CRCEN	 = zol::bit_rw<AHBENR, 12>;
		using MIFEN	 = zol::bit_rw<AHBENR, 8>;
		using DMAEN	 = zol::bit_rw<AHBENR, 0>;

	private:
		ahbenr() {}
	};

	struct apb2enr {
		using DBGEN	   = zol::bit_rw<APB2ENR, 22>;
		using USART1EN = zol::bit_rw<APB2ENR, 14>;
		using SPI1EN   = zol::bit_rw<APB2ENR, 12>;
		using ADCEN	   = zol::bit_rw<APB2ENR, 9>;
		using FWEN	   = zol::bit_rs<APB2ENR, 7>;
		using TIM22EN  = zol::bit_rw<APB2ENR, 5>;
		using TIM21EN  = zol::bit_rw<APB2ENR, 2>;
		using SYSCFGEN = zol::bit_rw<APB2ENR, 0>;

	private:
		apb2enr() {}
	};

	struct apb1enr {
		using LPTIM1EN = zol::bit_rw<APB1ENR, 31>;
		using ISC3EN   = zol::bit_rw<APB1ENR, 30>;
		using PWREN	   = zol::bit_rw<APB1ENR, 28>;
		using ISC2EN   = zol::bit_rw<APB1ENR, 22>;
		using ISC1EN   = zol::bit_rw<APB1ENR, 21>;
		using USART5EN = zol::bit_rw<APB1ENR, 20>;
		using USART4EN = zol::bit_rw<APB1ENR, 19>;
		using USART1EN = zol::bit_rw<APB1ENR, 18>;
		using USART2EN = zol::bit_rw<APB1ENR, 17>;
		using SPI2EN   = zol::bit_rw<APB1ENR, 14>;
		using WWDGEN   = zol::bit_rw<APB1ENR, 11>;
		using TIM7EN   = zol::bit_rw<APB1ENR, 5>;
		using TIM6EN   = zol::bit_rw<APB1ENR, 4>;
		using TIM3EN   = zol::bit_rw<APB1ENR, 1>;
		using TIM2EN   = zol::bit_rw<APB1ENR, 0>;

	private:
		apb1enr() {}
	};

	struct iopsmenr {
		using IOPHSMEN = zol::bit_rw<IOPSMENR, 7>;
		using IOPESMEN = zol::bit_rw<IOPSMENR, 4>;
		using IOPDSMEN = zol::bit_rw<IOPSMENR, 3>;
		using IOPCSMEN = zol::bit_rw<IOPSMENR, 2>;
		using IOPBSMEN = zol::bit_rw<IOPSMENR, 1>;
		using IOPASMEN = zol::bit_rw<IOPSMENR, 0>;

	private:
		iopsmenr() {}
	};

	struct ahbsmenr {
		using CRYPSMEN = zol::bit_rw<AHBSMENR, 24>;
		using CRCSMEN  = zol::bit_rw<AHBSMENR, 12>;
		using SRAMSMEN = zol::bit_rw<AHBSMENR, 9>;
		using MIFSMEN  = zol::bit_rw<AHBSMENR, 8>;
		using DMASMEN  = zol::bit_rw<AHBSMENR, 0>;

	private:
		ahbsmenr() {}
	};

	struct apb2smenr {
		using DBGSMEN	 = zol::bit_rw<APB2SMENR, 22>;
		using USART1SMEN = zol::bit_rw<APB2SMENR, 14>;
		using SPI1SMEN	 = zol::bit_rw<APB2SMENR, 12>;
		using ADCSMEN	 = zol::bit_rw<APB2SMENR, 9>;
		using TIM22SMEN	 = zol::bit_rw<APB2SMENR, 5>;
		using TIM21SMEN	 = zol::bit_rw<APB2SMENR, 2>;
		using SYSCFGSMEN = zol::bit_rw<APB2SMENR, 0>;

	private:
		apb2smenr() {}
	};

	struct apb1smenr {
		using LPTIM1SMEN = zol::bit_rw<APB1SMENR, 31>;
		using ISC3SMEN	 = zol::bit_rw<APB1SMENR, 30>;
		using PWRSMEN	 = zol::bit_rw<APB1SMENR, 28>;
		using ISC2SMEN	 = zol::bit_rw<APB1SMENR, 22>;
		using ISC1SMEN	 = zol::bit_rw<APB1SMENR, 21>;
		using USART5SMEN = zol::bit_rw<APB1SMENR, 20>;
		using USART4SMEN = zol::bit_rw<APB1SMENR, 19>;
		using USART1SMEN = zol::bit_rw<APB1SMENR, 18>;
		using USART2SMEN = zol::bit_rw<APB1SMENR, 17>;
		using SPI2SMEN	 = zol::bit_rw<APB1SMENR, 14>;
		using WWDGSMEN	 = zol::bit_rw<APB1SMENR, 11>;
		using TIM7SMEN	 = zol::bit_rw<APB1SMENR, 5>;
		using TIM6SMEN	 = zol::bit_rw<APB1SMENR, 4>;
		using TIM3SMEN	 = zol::bit_rw<APB1SMENR, 1>;
		using TIM2SMEN	 = zol::bit_rw<APB1SMENR, 0>;

	private:
		apb1smenr() {}
	};

	struct ccipr {
		using LPTIM1SEL	 = zol::field_rw<CCIPR, 18, 2>;
		using I2C3SEL	 = zol::field_rw<CCIPR, 16, 2>;
		using I2C1SEL	 = zol::field_rw<CCIPR, 12, 2>;
		using LPUART1SEL = zol::field_rw<CCIPR, 10, 2>;
		using USART2SEL	 = zol::field_rw<CCIPR, 2, 2>;
		using USART1SEL	 = zol::field_rw<CCIPR, 0, 2>;

	private:
		ccipr() {}
	};

	struct csr {
		using LPWRRSTF = zol::bit_r<CSR, 31>;
		using WWDGRSTF = zol::bit_r<CSR, 30>;
		using IWDGRSTF = zol::bit_r<CSR, 29>;
		using SFTRSTF  = zol::bit_r<CSR, 28>;
		using PORRSTF  = zol::bit_r<CSR, 27>;
		using PINRSTF  = zol::bit_r<CSR, 26>;
		using OBLRSTF  = zol::bit_r<CSR, 25>;
		using FWRSTF   = zol::bit_r<CSR, 24>;
		using RMVF	   = zol::bit_rw<CSR, 23>;
		using RTCRST   = zol::bit_rw<CSR, 19>;
		using RTCEN	   = zol::bit_rw<CSR, 18>;
		using RTCSEL   = zol::field_rw<CSR, 16, 2>;
		using CSSLSED  = zol::bit_r<CSR, 14>;
		using CSSLSEON = zol::bit_rw<CSR, 13>;
		using LSEDRV   = zol::field_rw<CSR, 11, 2>;
		using LSEBYP   = zol::bit_rw<CSR, 10>;
		using LSERDY   = zol::bit_r<CSR, 9>;
		using LSEON	   = zol::bit_rw<CSR, 8>;
		using LSIRDY   = zol::bit_r<CSR, 1>;
		using LSION	   = zol::bit_rw<CSR, 0>;

	private:
		csr() {}
	};

private:
	RCC();
};
