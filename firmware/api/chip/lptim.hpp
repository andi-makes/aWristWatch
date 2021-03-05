#pragma once

#include "register.hpp"

#include <cstdint>

namespace lptim {
    enum class isr : uint8_t {
        CMPM    = 0,
        ARRM    = 1,
        EXTTRIG = 2,
        CMPOK   = 3,
        ARROK   = 4,
        UP      = 5,
        DOWN    = 6
    };

    enum class icr : uint8_t {
        CMPMCF    = 0,
        ARRMCF    = 1,
        EXTTRIGCF = 2,
        CMPOKCF   = 3,
        ARROKCF   = 4,
        UPCF      = 5,
        DOWNCF    = 6
    };

    enum class ier : uint8_t {
        CMPMIE    = 0,
        ARRMIE    = 1,
        EXTTRIGIE = 2,
        CMPOKIE   = 3,
        ARROKIE   = 4,
        UPIE      = 5,
        DOWNIE    = 6
    };

    enum class cfgr : uint8_t {
        CKSEL     = 0,
        TIMOUT    = 19,
        WAVE      = 20,
        WAVEPOL   = 21,
        PRELOAD   = 22,
        COUNTMODE = 23,
        ENC       = 24
    };

    enum class trigen : uint8_t {
        SOFTWARE = 0,
        RISING   = 1,
        FALLING  = 2,
        BOTH     = 3
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
        DIV_1   = 0,
        DIV_2   = 1,
        DIV_4   = 2,
        DIV_8   = 3,
        DIV_16  = 4,
        DIV_32  = 5,
        DIV_64  = 6,
        DIV_128 = 7
    };

    enum class trgflt : uint8_t {    // TODO: Fix this in .clang-format
        ANY   = 0,
        CLK_2 = 1,
        CLK_4 = 2,
        CLK_8 = 3
    };

    enum class ckflt : uint8_t {    //
        ANY   = 0,
        CLK_2 = 1,
        CLK_4 = 2,
        CLK_8 = 3
    };

    enum class ckpol : uint8_t {    //
        RISING_ENC1  = 0,
        FALLING_ENC2 = 1,
        BOTH_ENC3    = 2
    };

    enum class cr : uint8_t {    //
        ENABLE  = 0,
        SNGSTRT = 1,
        CNTSTRT = 2
    };

    enum class clock : uint8_t {    //
        APB   = 0,
        LS1   = 1,
        HSI16 = 2,
        LSE   = 3
    };
}

struct LPTIM1 {
    static constexpr zol::addr_t address = 0x4000'7C00;

    using ISR  = zol::reg<uint32_t, address + 0x0>;
    using ICR  = zol::reg<uint32_t, address + 0x4>;
    using IER  = zol::reg<uint32_t, address + 0x8>;
    using CFGR = zol::reg<uint32_t, address + 0xC>;
    using CR   = zol::reg<uint32_t, address + 0x10>;
    using CMP  = zol::reg<uint32_t, address + 0x14>;
    using ARR  = zol::reg<uint32_t, address + 0x18>;
    using CNT  = zol::reg<uint32_t, address + 0x1C>;

    static void power_on() { RCC::APB1ENR::set_bit(31U); }

    static void set_clock_source(lptim::clock c) {
        RCC::CCIPR::and_reg(~((0b11U) << 18));
        RCC::CCIPR::or_reg(static_cast<RCC::CCIPR::type_t>(c) << 18);
    }

    // TODO: implement get functions

    static bool get(lptim::isr i) {
        return ISR::get_bit(static_cast<unsigned int>(i));
    }

    static void clear_interrupt_pending(lptim::icr i) {
        ICR::set_bit(static_cast<unsigned int>(i));
    }

    static void set(lptim::ier i, bool b) {
        if (b) {
            IER::set_bit(static_cast<unsigned int>(i));
        } else {
            IER::clear_bit(static_cast<unsigned int>(i));
        }
    }

    static bool get(lptim::ier i) {
        return IER::get_bit(static_cast<unsigned int>(i));
    }

    static void set(lptim::cfgr bit, bool level) {
        if (level) {
            CFGR::set_bit(static_cast<unsigned int>(bit));
        } else {
            CFGR::clear_bit(static_cast<unsigned int>(bit));
        }
    }

    static bool get(lptim::cfgr bit) {
        return CFGR::get_bit(static_cast<unsigned int>(bit));
    }

    static void set(lptim::cr bit, bool level) {
        if (level) {
            CR::set_bit(static_cast<unsigned int>(bit));
        } else {
            CR::clear_bit(static_cast<unsigned int>(bit));
        }
    }

    static bool get(lptim::cr bit) {
        return CR::get_bit(static_cast<unsigned int>(bit));
    }

    static void set(lptim::trigen t) {
        CFGR::and_reg(~(0b11U << 17));
        CFGR::or_reg(static_cast<unsigned int>(t) << 17);
    }

    // TODO: If I ever need to read it, implement the function.
    // static lptim::trigen get(lptim::trigen) {
    // 	return (CFGR::get_reg() & (0b11 << 17)) >> 17;
    // }

    static void set(lptim::trigsel t) {
        CFGR::and_reg(~(0b111U << 13));
        CFGR::or_reg(static_cast<unsigned int>(t) << 13);
    }

    static void set(lptim::presc p) {
        CFGR::and_reg(~(0b111U << 9));
        CFGR::or_reg(static_cast<unsigned int>(p) << 9);
    }

    static void set(lptim::trgflt t) {
        CFGR::and_reg(~(0b11U << 6));
        CFGR::or_reg(static_cast<unsigned int>(t) << 6);
    }

    static void set(lptim::ckflt c) {
        CFGR::and_reg(~(0b11U << 3));
        CFGR::or_reg(static_cast<unsigned int>(c) << 3);
    }

    static void set(lptim::ckpol c) {
        CFGR::and_reg(~(0b11U << 1));
        CFGR::or_reg(static_cast<unsigned int>(c) << 1);
    }

    LPTIM1() = delete;
};
