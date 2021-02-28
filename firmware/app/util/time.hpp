#pragma once

struct time {
	static int hrs, min, day, mon, year;

	static void load_time();
	static void load_date();

	static void store_time();
	static void store_date();
};
