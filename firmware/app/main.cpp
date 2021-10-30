#include "driver/bat.hpp"
#include "driver/display.hpp"
#include "driver/input.hpp"
#include "sm.hpp"
#include "util/stby.hpp"

#include <chip/gpio.hpp>
#include <chip/interrupts.hpp>
#include <chip/pwr.hpp>
#include <chip/rtc.hpp>
#include <chip/spi.hpp>
#include <chip/syscfg.hpp>

// cppcheck-suppress unusedFunction
void SystemInit() {
    SYSCFG::power_on();
    RTC::power_on();
    SPI1::power_on();
    GPIOA::power_on();
}

int main() {
    RTC::enable();

    if (!RTC::is_initialized()) {
        aww::sm::set_state(aww::sm::STATE::EDIT_HRS);
        RTC::set_time_and_date(0, 0, 0, 1, 1, 0x21);
    }

    // RTC Wakup Timer, 0.125sec
    RTC::setup_wakeup_timer(255, 0);

    battery::setup();
    display::setup();
    input::setup();

    // Setup Stop mode
    using SCR = zol::reg<uint32_t, 0xE000ED10>;
    PWR::CR::set_bit(uint8_t(PWR::cr::LPSDSR));

    interrupt::enable();

    if (RTC::isr::WUTF::read()) {
        RTC::isr::WUTF::clear();
    }

    while (true) {
        if (aww::stby::in_stby()) {
//            using SCR = zol::reg<uint32_t, 0xE000ED10>;
            SCR::or_reg(1 << 2);                          // Set sleepdeep bit
            PWR::CR::set_bit(uint8_t(PWR::cr::CWWUF));    // Clear WUF bit
            PWR::CR::clear_bit(1U);                       // Clear PDDS Bit
            RCC::cfgr::STOPWUCK::write(false);            // MSI as wakeup clock

            RTC::disable_write_protect();
            RTC::cr::WUTIE::write(off);
            RTC::cr::WUTE::write(off);
            // RTC::cr::WUTE::write(off); // Disable Wakup Timer
            while (RTC::isr::WUTWF::read() == 0) {    // WUTWF
            }    // Make sure there is no interrupt pending
            asm("wfi");
            RTC::cr::WUTE::write(on);
            RTC::cr::WUTIE::write(on);
            RTC::enable_write_protect();
        }
    }
}
