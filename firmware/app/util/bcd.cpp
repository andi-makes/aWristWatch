#include "bcd.hpp"

namespace aww::bcd {
    int bcd_to_num(int bcd) {
        int num = bcd & 0xF;
        int mul = 1;
        while (bcd > 0) {
            bcd >>= 4;
            mul *= 10;
            num += (bcd & 0xF) * mul;
        }
        return num;
    }

    int num_to_bcd(int num) {
        int bcd = num % 10;
        num /= 10;
        int i = 1;
        while (num > 0) {
            bcd |= (num % 10) << (4 * i);
            num /= 10;
            ++i;
        }
        return bcd;
    }
}