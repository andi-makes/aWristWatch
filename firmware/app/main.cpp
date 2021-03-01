#include "driver/bat.hpp"
#include "driver/display.hpp"
#include "driver/input.hpp"
#include "sm.hpp"
#include "util/stby.hpp"

#include <chip/exti.hpp>
#include <chip/interrupts.hpp>
#include <chip/rcc.hpp>
#include <chip/rtc.hpp>
#include <chip/spi.hpp>
#include <chip/syscfg.hpp>
#include <util/pin.hpp>

void RTC_IRQHandler() {
	/// Clears any flags assotiated with the RTC wakeup timer interrupt
	auto clear_irq = []() {
		EXTI::PR::set_bit(20);
		RTC::isr::WUTF::clear();
	};

	// Is it the RTC wakeup timer interrupt?
	if (EXTI::PR::get_bit(20)) {
		/// Time, after which the device will enter a standby-mode in seconds
		static constexpr int stdby{ 10 };
		/// Toggles every 500ms. Used to let text blink
		static bool half_second{ false };
		/// Counter which is used to create the bool `half_second`
		static int half_second_counter{ 0 };

		// If in standby, do nothing.
		if (aww::stby::in_stby()) {
			clear_irq();
			return;
		}
		// If not in standby mode, increment standby counter
		aww::stby::tick();

		half_second_counter++;

		// Execute the statemachine.
		aww::sm::exec(half_second);

		const auto state = aww::sm::get_state();
		// Half a second passed
		if (half_second_counter == 4) {
			half_second			= !half_second;
			half_second_counter = 0;
			// If we are in adjacent states of DISPLAY_BAT, read the bat voltage
			if (state == aww::sm::STATE::DISPLAY_BAT ||
				state == aww::sm::STATE::DISPLAY_TIME ||
				state == aww::sm::STATE::DISPLAY_BRIGHTNESS) {
				battery::sample();
			}
		}
		display::send();

		// If it's time to enter standby
		if (aww::stby::get_counter() >= (stdby * 8) &&
			(state == aww::sm::STATE::DISPLAY_TIME ||
			 state == aww::sm::STATE::DISPLAY_DATE ||
			 state == aww::sm::STATE::DISPLAY_YEAR)) {
			aww::stby::enter_stby();
		}

		clear_irq();
	}
}

void SystemInit() {
	SYSCFG::enable();
	RTC::enable();
	SPI1::enable();
	GPIOA::enable();
}

int main() {
	if (!RTC::is_initialized()) {
		aww::sm::set_state(aww::sm::STATE::EDIT_HRS);
		RTC::set_time_and_date(0, 0, 0, 1, 1, 0x21);
	}

	// RTC Wakup Timer, 0.125sec
	RTC::setup_wakeup_timer(255, 0);

	battery::setup();
	display::setup();
	input::setup();

	asm("CPSIE I");
	RTC::isr::WUTF::clear();

	while (true) {
		asm("nop");
	}
}
