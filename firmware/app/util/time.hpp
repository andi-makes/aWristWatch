#pragma once

struct time {
    static unsigned int hrs, min, day, mon, year;

    static void load();

    static void store_time();
    static void store_date();

    time() = delete;
};
