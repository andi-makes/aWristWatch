#pragma once

namespace aww::sm {
	enum class STATE {
		EDIT_HRS,
		EDIT_MINS,
		EDIT_DAY,
		EDIT_MONTH,
		EDIT_YEAR,
		DISPLAY_TIME,
		DISPLAY_DATE,
		DISPLAY_YEAR,
		DISPLAY_BAT,
		DISPLAY_BRIGHTNESS,
		EDIT_BRIGHTNESS
	};

	void exec(const bool half_second);
	void set_state(const STATE s);
	STATE get_state();
}