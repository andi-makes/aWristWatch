#include "input.h"

bool input::both	  = false;
bool input::both_up	  = false;
bool input::both_down = false, input::up = false, input::down = false;

// NVIC 5
// sw time
void EXTI0_1_IRQHandler() {
	EXTI::PR::set_bit(0);

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