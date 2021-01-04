#pragma once

#include "rcc.h"

#include <cstdint>
#include <register.h>

template<zol::addr_t address>
struct SPIx {
	constexpr static uint8_t BIDIMODE = 15;
	constexpr static uint8_t BIDIOE	  = 14;
	constexpr static uint8_t CRCEN	  = 13;
	constexpr static uint8_t CRCNEXT  = 12;
	constexpr static uint8_t DFF	  = 11;
	constexpr static uint8_t RXONLY	  = 10;
	constexpr static uint8_t SSM	  = 9;
	constexpr static uint8_t SSI	  = 8;
	constexpr static uint8_t LSBFIRST = 7;
	constexpr static uint8_t SPE	  = 6;
	constexpr static uint8_t BR		  = 3;	  // [3:5]
	constexpr static uint16_t BR_MASK = (0b111 << BR);
	constexpr static uint8_t MSTR	  = 2;
	constexpr static uint8_t CPOL	  = 1;
	constexpr static uint8_t CPHA	  = 0;

	using CR1 = zol::reg<uint16_t, address + 0x0>;

	constexpr static uint8_t TXEIE	 = 7;
	constexpr static uint8_t RXNEIE	 = 6;
	constexpr static uint8_t ERRIE	 = 5;
	constexpr static uint8_t FRF	 = 4;
	constexpr static uint8_t SSOE	 = 2;
	constexpr static uint8_t TXDMAEN = 1;
	constexpr static uint8_t RXDMAEN = 0;

	using CR2 = zol::reg<uint16_t, address + 0x4>;

	constexpr static uint8_t FRE	= 8;
	constexpr static uint8_t BSY	= 7;
	constexpr static uint8_t OVR	= 6;
	constexpr static uint8_t MODF	= 5;
	constexpr static uint8_t CRCERR = 4;
	constexpr static uint8_t UDR	= 3;
	constexpr static uint8_t CHSIDE = 2;
	constexpr static uint8_t TXE	= 1;
	constexpr static uint8_t RXNE	= 0;

	using SR	 = zol::reg<uint16_t, address + 0x8>;
	using DR	 = zol::reg<uint16_t, address + 0xC>;
	using CRCPR	 = zol::reg<uint16_t, address + 0x10>;
	using RXCRCR = zol::reg<uint16_t, address + 0x14>;
	using TXCRCR = zol::reg<uint16_t, address + 0x18>;

	constexpr static uint8_t I2SMOD		  = 11;
	constexpr static uint8_t I2SE		  = 10;
	constexpr static uint8_t I2SCFG		  = 8;	  // [8:9]
	constexpr static uint16_t I2SCFG_MASK = (0b11 << I2SCFG);
	constexpr static uint8_t PCMSYNC	  = 7;
	constexpr static uint8_t I2SSTD		  = 4;	  // [4:5]
	constexpr static uint16_t I2SSTD_MASK = (0b11 << I2SSTD);
	constexpr static uint8_t CKPOL		  = 3;
	constexpr static uint8_t DATLEN		  = 1;	  // [1:2]
	constexpr static uint16_t DATLEN_MASK = (0b11 << DATLEN);
	constexpr static uint8_t CHLEN		  = 0;

	using I2SCFGR = zol::reg<uint16_t, address + 0x1C>;

	constexpr static uint8_t MCKOE		  = 9;
	constexpr static uint8_t ODD		  = 8;
	constexpr static uint8_t I2SDIV		  = 0;	  // [0:7]
	constexpr static uint16_t I2SDIV_MASK = (0b1111111 << I2SDIV);

	using I2SPR = zol::reg<uint16_t, address + 0x20>;

	static void enable();

private:
	SPIx();
};

constexpr zol::addr_t SPI1_ADDR = 0x4001'3000;
constexpr zol::addr_t SPI2_ADDR = 0x4001'3800;

using SPI1 = SPIx<SPI1_ADDR>;	 // APB2
using SPI2 = SPIx<SPI2_ADDR>;	 // APB1

template<zol::addr_t a>
void SPIx<a>::enable() {
	static_assert(a == SPI1_ADDR || a == SPI2_ADDR,
				  "There is no SPI component at that address!");
	if constexpr (a == SPI1_ADDR) {
		RCC::APB2ENR::set_bit(12);
	} else {
		RCC::APB1ENR::set_bit(14);
	}
}
