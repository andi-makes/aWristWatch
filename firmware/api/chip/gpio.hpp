#pragma once

#include "rcc.hpp"

#include <cinttypes>
#include <register.hpp>

namespace gpio {
    enum class MODE : uint8_t {
        INPUT     = 0,
        OUTPUT    = 1,
        ALTERNATE = 2,
        ANALOG    = 3
    };

    enum class OTYPE : uint8_t {    //
        PUSH_PULL  = 0,
        OPEN_DRAIN = 1
    };

    enum class OSPEED : uint8_t {
        LOW       = 0,
        MEDIUM    = 1,
        HIGH      = 2,
        VERY_HIGH = 3
    };

    enum class AF : uint8_t {
        AF0 = 0,
        AF1 = 1,
        AF2 = 2,
        AF3 = 3,
        AF4 = 4,
        AF5 = 5,
        AF6 = 6,
        AF7 = 7
    };

    enum class PUPD : uint8_t { DISABLED = 0, PULLUP = 1, PULLDOWN = 2 };
}

template<zol::addr_t address>
struct GPIOx {
    using MODER   = zol::reg<uint32_t, address + 0x0>;
    using OTYPER  = zol::reg<uint32_t, address + 0x4>;
    using OSPEEDR = zol::reg<uint32_t, address + 0x8>;
    using PUPDR   = zol::reg<uint32_t, address + 0xC>;
    using IDR     = zol::reg<uint32_t, address + 0x10>;
    using ODR     = zol::reg<uint32_t, address + 0x14>;
    using BSRR    = zol::reg<uint32_t, address + 0x18>;
    using LCKR    = zol::reg<uint32_t, address + 0x1C>;
    using AFRL    = zol::reg<uint32_t, address + 0x20>;
    using AFRH    = zol::reg<uint32_t, address + 0x24>;
    using BRR     = zol::reg<uint32_t, address + 0x28>;

    static void power_on();

    static void set_mode(std::unsigned_integral auto pin, gpio::MODE m) {
        MODER::and_reg(~(0b11U << (pin * 2)));
        MODER::or_reg(static_cast<typename MODER::type_t>(m) << (pin * 2));
    }

    static void set_output_type(std::unsigned_integral auto pin,
                                gpio::OTYPE t) {
        if (t == gpio::OTYPE::OPEN_DRAIN) {
            OTYPER::set_bit(pin);
        } else {
            OTYPER::clear_bit(pin);
        }
    }

    static void set_output_speed(std::unsigned_integral auto pin,
                                 gpio::OSPEED s) {
        OSPEEDR::and_reg(~(0b11U << (pin * 2)));
        OSPEEDR::or_reg(static_cast<typename OSPEEDR::type_t>(s) << (pin * 2));
    }

    static void set_pullup(std::unsigned_integral auto pin, gpio::PUPD p) {
        PUPDR::and_reg(~(0b11U << (pin * 2)));
        PUPDR::or_reg(static_cast<typename PUPDR::type_t>(p) << (pin * 2));
    }

    static bool get_input_data(std::unsigned_integral auto pin) {
        return IDR::get_bit(pin);
    }

    static bool get_output_data(std::unsigned_integral auto pin) {
        return ODR::get_bit(pin);
    }

    /**
     * @brief Unless you have a good reason, use bit set / bit reset functions
     * @deprecated use bit set / reset functions
     */
    static void set_output_data(std::unsigned_integral auto pin, bool level) {
        if (level) {
            ODR::set_bit(pin);
        } else {
            ODR::clear_bit(pin);
        }
    }

    static void set_bit(std::unsigned_integral auto pin, bool level) {
        if (level) {
            BSRR::set_bit(pin);
        } else {
            BRR::set_bit(pin);
        }
    }

    static void lock_pin(std::unsigned_integral auto pin) {
        LCKR::set_reg((1U << pin) | (1U << 16));
    }

    static void set_alternate_function(std::unsigned_integral auto pin,
                                       gpio::AF f) {
        if (pin <= 7) {
            AFRL::and_reg(~(0b1111U << (pin * 4)));
            AFRL::or_reg(static_cast<typename AFRL::type_t>(f) << (pin * 4));
        } else {
            AFRH::and_reg(~(0b1111U << ((pin - 8) * 4)));
            AFRH::or_reg(static_cast<typename AFRH::type_t>(f)
                         << ((pin - 8) * 4));
        }
    }

    GPIOx() = delete;
};

constexpr zol::addr_t GPIOA_ADDR{ 0x5000'0000 };

using GPIOA = GPIOx<GPIOA_ADDR>;

template<zol::addr_t a>
void GPIOx<a>::power_on() {
    static_assert(a == GPIOA_ADDR,
                  "There is no GPIO component at that address!");
    if constexpr (a == GPIOA_ADDR) {
        // RCC::IOPENR::set_bit(0);
        RCC::iopenr::IOPAEN::write(on);
    }
}