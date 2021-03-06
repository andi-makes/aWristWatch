#pragma once

#include <chip/exti.hpp>
#include <chip/interrupts.hpp>
#include <chip/nvic.hpp>
#include <chip/syscfg.hpp>
#include <util/pin.hpp>

using sw_time = pin<GPIOA, 0>;
using sw_date = pin<GPIOA, 10>;

struct input {
    static bool both, both_up, both_down, up, down;

    static bool is_both_up() {
        if (both_up) {
            both_up = false;
            return true;
        }
        return false;
    }

    static bool is_both_down() {
        if (both_down) {
            both_down = false;
            return true;
        }
        return false;
    }

    static bool is_up() {
        if (up) {
            up = false;
            return true;
        }
        return false;
    }

    static bool is_down() {
        if (down) {
            down = false;
            return true;
        }
        return false;
    }

    static bool is_both() {
        if (both) {
            both = false;
            return true;
        }
        return false;
    }

    static void setup() {
        sw_time::set_mode(gpio::MODE::INPUT);
        sw_time::set_pullup(gpio::PUPD::PULLUP);
        EXTI::IMR::set_bit(0U);
        EXTI::FTSR::set_bit(0U);
        EXTI::RTSR::set_bit(0U);
        SYSCFG::EXTICR1::set_reg(0);
        NVIC::ISER::set_bit(5U);

        sw_date::set_mode(gpio::MODE::INPUT);
        sw_date::set_pullup(gpio::PUPD::PULLUP);
        EXTI::IMR::set_bit(10U);
        EXTI::FTSR::set_bit(10U);
        EXTI::RTSR::set_bit(10U);
        SYSCFG::EXTICR3::set_reg(0);
        NVIC::ISER::set_bit(7U);
    }

    input() = delete;
};
