#pragma once

#include <cinttypes>
#include <util/pin.hpp>

constexpr uint8_t seg[]{ 0b01110111, 0b00010100, 0b10110011, 0b10110110,
                         0b11010100, 0b11100110, 0b11100111, 0b00110100,
                         0b11110111, 0b11110110, 0 };

struct display {
    using oe  = pin<GPIOA, 9>;
    using le  = pin<GPIOA, 4>;
    using clk = pin<GPIOA, 5>;
    using mdi = pin<GPIOA, 6>;
    using sdi = pin<GPIOA, 7>;

    static constexpr uint32_t DP1{ 1U << 27 };
    static constexpr uint32_t DP2{ 1U << 19 };
    static constexpr uint32_t DP3{ 1U << 11 };
    static constexpr uint32_t DP4{ 1U << 3 };

    static uint8_t brightness;
    static void off();
    static void on();

    static bool ison;
    static bool is_on() { return ison; }

    static void setup();
    static void send();

    static void fill_buffer(uint32_t b) { buffer = b; }
    static void fill_buffer_bcd(std::unsigned_integral auto one,
                                std::unsigned_integral auto two,
                                std::unsigned_integral auto three,
                                std::unsigned_integral auto four) {
        fill_buffer(bcd_to_raw(one, two, three, four));
    }

    static uint32_t bcd_to_raw(std::unsigned_integral auto one,
                               std::unsigned_integral auto two,
                               std::unsigned_integral auto three,
                               std::unsigned_integral auto four) {
        if (one > 10) one = 10;
        if (two > 10) two = 10;
        if (three > 10) three = 10;
        if (four > 10) four = 10;

        return (uint32_t(seg[one]) << 24) | (uint32_t(seg[two]) << 16) |
               (uint32_t(seg[three]) << 8) | (uint32_t(seg[four]) << 0);
    }

    static void add_point(uint32_t p) { buffer |= p; }

    static uint32_t buffer;

    display() = delete;

private:
};