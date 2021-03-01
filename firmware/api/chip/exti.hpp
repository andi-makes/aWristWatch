#pragma once

#include <cstdint>
#include <register.hpp>

struct EXTI {
    constexpr static zol::addr_t address = 0X4001'0400;

    using IMR   = zol::reg<uint32_t, address + 0x0>;
    using EMR   = zol::reg<uint32_t, address + 0x4>;
    using RTSR  = zol::reg<uint32_t, address + 0x8>;
    using FTSR  = zol::reg<uint32_t, address + 0xC>;
    using SWIER = zol::reg<uint32_t, address + 0x10>;
    using PR    = zol::reg<uint32_t, address + 0x14>;

    EXTI() = delete;
};
