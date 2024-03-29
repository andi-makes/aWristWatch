#include "time.hpp"

#include "../driver/bat.hpp"
#include "../driver/display.hpp"
#include "../sm.hpp"
#include "bcd.hpp"
#include "stby.hpp"

#include <chip/interrupts.hpp>
#include <chip/rtc.hpp>

unsigned int time::hrs{ 0 }, time::min{ 0 }, time::day{ 1 }, time::mon{ 1 },
    time::year{ 21 };

void time::load() {
    using namespace aww::bcd;
    while (!RTC::isr::RSF::read()) {
    }
    const auto time{ RTC::TR::get_reg() };
    RTC::isr::RSF::clear();
    while (!RTC::isr::RSF::read()) {
    }
    const auto date{ RTC::DR::get_reg() };

    hrs = bcd_to_num((time & 0x3F0000U) >> 16U);
    min = bcd_to_num((time & 0x007F00U) >> 8U);

    day  = bcd_to_num((date & 0x00003FU));
    mon  = bcd_to_num((date & 0x001F00U) >> 8U);
    year = bcd_to_num((date & 0xFF0000U) >> 16U);
}

void time::store_time() {
    using namespace aww::bcd;
    RTC::set_time(num_to_bcd(hrs), num_to_bcd(min), 0);
}

void time::store_date() {
    using namespace aww::bcd;
    RTC::set_date(num_to_bcd(day), num_to_bcd(mon), num_to_bcd(year));
}

void RTC_Wakeup_Timer() {
    /// Time, after which the device will enter a standby-mode in seconds
    static constexpr int stdby{ 10 };
    /// Toggles every 500ms. Used to let text blink
    static bool half_second{ false };
    /// Counter which is used to create the bool `half_second`
    static int half_second_counter{ 0 };

    // If not in standby mode, increment standby counter
    aww::stby::tick();

    half_second_counter++;

    // Execute the statemachine.
    aww::sm::exec(half_second);

    const auto state = aww::sm::get_state();
    // Half a second passed
    if (half_second_counter == 4) {
        half_second         = !half_second;
        half_second_counter = 0;
        // If we are in adjacent states of DISPLAY_BAT, read the bat voltage
        if (state == aww::sm::STATE::DISPLAY_BAT ||
            state == aww::sm::STATE::DISPLAY_TIME ||
            state == aww::sm::STATE::DISPLAY_BRIGHTNESS) {
            battery::sample();
        }
    }
    display::send();

    // Check if it's time to enter standby
    if (aww::stby::get_counter() >= (stdby * 8) &&
        (state == aww::sm::STATE::DISPLAY_TIME ||
         state == aww::sm::STATE::DISPLAY_DATE ||
         state == aww::sm::STATE::DISPLAY_YEAR)) {
        aww::stby::enter_stby();
    }
}

// cppcheck-suppress unusedFunction
void RTC_IRQHandler() {
    // Is it the RTC wakeup timer interrupt?
    if (EXTI::PR::get_bit(20U)) {
        RTC_Wakeup_Timer();
        // Clear any flags assotiated with the interrupt.
        // This ensures that the interrupt isn't executed
        EXTI::PR::set_bit(20U);
        RTC::isr::WUTF::clear();
    }
}
