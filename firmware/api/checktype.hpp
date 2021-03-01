#pragma once

#include <cinttypes>

namespace zol::check_types {
    template<typename inttype>
    constexpr uint8_t width();

    template<>
    constexpr uint8_t width<uint8_t>() {
        return 8;
    }

    template<>
    constexpr uint8_t width<int8_t>() {
        return 8;
    }

    template<>
    constexpr uint8_t width<uint16_t>() {
        return 16;
    }

    template<>
    constexpr uint8_t width<int16_t>() {
        return 16;
    }

    template<>
    constexpr uint8_t width<uint32_t>() {
        return 32;
    }

    template<>
    constexpr uint8_t width<int32_t>() {
        return 32;
    }

    template<>
    constexpr uint8_t width<uint64_t>() {
        return 64;
    }

    template<>
    constexpr uint8_t width<int64_t>() {
        return 64;
    }
}
