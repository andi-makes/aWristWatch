#pragma once

#include <concepts>

namespace aww::bcd {
    std::unsigned_integral auto bcd_to_num(std::unsigned_integral auto bcd) {
        auto num = bcd & 0xF;
        auto mul = 1U;
        while (bcd > 0) {
            bcd >>= 4;
            mul *= 10;
            num += (bcd & 0xF) * mul;
        }
        return num;
    }

    std::unsigned_integral auto num_to_bcd(std::unsigned_integral auto num) {
        auto bcd = num % 10;
        num /= 10;
        auto i = 1U;
        while (num > 0) {
            bcd |= (num % 10) << (4 * i);
            num /= 10;
            ++i;
        }
        return bcd;
    }
}