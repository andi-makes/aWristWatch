#include "input.h"

#include "display.h"

bool input::both	  = false;
bool input::both_up	  = false;
bool input::both_down = false, input::up = false, input::down = false;
int input::counter = 0;

namespace {
	bool ignore_press = false;
}

// NVIC 5
// sw time
void EXTI0_1_IRQHandler() {
	EXTI::PR::set_bit(0);

	input::counter = 0;

	if (!display::is_on()) {
		ignore_press = true;
		display::on();
		return;
	}

	if (ignore_press) {
		ignore_press = false;
		return;
	}

	if (sw_time::is_low()) {		// Falling Edge
		if (sw_date::is_low()) {	// other switch
			input::both		 = true;
			input::both_down = true;
		}
	} else {	// Rising Edge
		if (!input::both) {
			input::up = true;
		} else {
			if (sw_date::is_high()) input::both = false;
		}
	}
}

// NVIC 7
// sw date
void EXTI4_15_IRQHandler() {
	EXTI::PR::set_bit(10);

	input::counter = 0;

	if (!display::is_on()) {
		ignore_press = true;
		display::on();
		return;
	}

	if (ignore_press) {
		ignore_press = false;
		return;
	}

	if (sw_date::is_low()) {	// Falling Edge
		if (sw_time::is_low()) {
			input::both	   = true;
			input::both_up = true;
		}
	} else {	// Rising Edge
		if (!input::both) {
			input::down = true;
		} else {
			// if both are high
			if (sw_time::is_high()) input::both = false;
		}
	}
}