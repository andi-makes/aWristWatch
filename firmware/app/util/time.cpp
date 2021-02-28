#include "time.hpp"

#include "bcd.hpp"

#include <chip/rtc.hpp>

int time::hrs{ 0 }, time::min{ 0 }, time::day{ 1 }, time::mon{ 1 },
	time::year{ 21 };

void time::load_time() {
	using namespace aww::bcd;
	const auto time = RTC::TR::get_reg();

	hrs = bcd_to_num((time & 0x3F0000) >> 16);
	min = bcd_to_num((time & 0x007F00) >> 8);
}

void time::load_date() {
	using namespace aww::bcd;
	const auto date = RTC::DR::get_reg();

	day	 = bcd_to_num((date & 0x00003F));
	mon	 = bcd_to_num((date & 0x001F00) >> 8);
	year = bcd_to_num((date & 0xFF0000) >> 16);
}

void time::store_time() {
	using namespace aww::bcd;
	RTC::set_time(num_to_bcd(hrs), num_to_bcd(min), 0);
}

void time::store_date() {
	using namespace aww::bcd;
	RTC::set_date(num_to_bcd(day), num_to_bcd(mon), num_to_bcd(year));
}
