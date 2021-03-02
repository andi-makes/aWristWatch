#include "input.hpp"

#include "../util/stby.hpp"

bool input::both{ false };
bool input::both_up{ false };
bool input::both_down{ false }, input::up{ false }, input::down{ false };

namespace {
    bool ignore_press{ false };
}

// NVIC 5
// sw time
// cppcheck-suppress unusedFunction
void EXTI0_1_IRQHandler() {
    EXTI::PR::set_bit(0u);

    aww::stby::kick();

    if (aww::stby::in_stby()) {
        ignore_press = true;
        aww::stby::exit_stby();
        return;
    }

    if (ignore_press) {
        ignore_press = false;
        return;
    }

    if (sw_time::is_low()) {        // Falling Edge
        if (sw_date::is_low()) {    // other switch
            input::both      = true;
            input::both_down = true;
        }
    } else {    // Rising Edge
        if (!input::both) {
            input::up = true;
        } else {
            if (sw_date::is_high()) input::both = false;
        }
    }
}

// NVIC 7
// sw date
// cppcheck-suppress unusedFunction
void EXTI4_15_IRQHandler() {
    EXTI::PR::set_bit(10u);

    aww::stby::kick();

    if (aww::stby::in_stby()) {
        ignore_press = true;
        aww::stby::exit_stby();
        return;
    }

    if (ignore_press) {
        ignore_press = false;
        return;
    }

    if (sw_date::is_low()) {    // Falling Edge
        if (sw_time::is_low()) {
            input::both    = true;
            input::both_up = true;
        }
    } else {    // Rising Edge
        if (!input::both) {
            input::down = true;
        } else {
            // if both are high
            if (sw_time::is_high()) input::both = false;
        }
    }
}