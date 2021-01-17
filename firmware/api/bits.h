#pragma once

#include "checktype.h"

#include <cinttypes>
#include <register.h>

constexpr bool on  = true;
constexpr bool off = false;

namespace zol {
	/// @brief Read-Only Bit in register
	/// @tparam reg ... Register
	/// @tparam bit ... bitnumber
	template<zol::Register reg, uint8_t bit>
	struct bit_r {
		static bool read() {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			return reg::get_bit(bit);
		}
	};

	/// @brief Write-Only Bit in register
	/// @tparam reg ... Register
	/// @tparam bit ... bitnumber
	template<zol::Register reg, uint8_t bit>
	struct bit_w {
		static void write(bool level) {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			if (level) {
				reg::set_bit(bit);
			} else {
				reg::clear_bit(bit);
			}
		}
	};

	/// @brief Read-Write Bit in register
	/// @tparam reg ... Register
	/// @tparam bit ... bitnumber
	template<zol::Register reg, uint8_t bit>
	struct bit_rw {
		static bool read() {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			return reg::get_bit(bit);
		}

		static void write(bool level) {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			if (level) {
				reg::set_bit(bit);
			} else {
				reg::clear_bit(bit);
			}
		}
	};

	/// @brief Bit which can be read from. It gets cleared by writing a 0 to it.
	/// @tparam reg ... Register
	/// @tparam bit ... bitnumber
	template<zol::Register reg, uint8_t bit>
	struct bit_rc0 {
		static bool read() {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			return reg::get_bit(bit);
		}
		static void clear() {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			reg::clear_bit(bit);
		}
	};

	/// @brief Bit which can be read from. It gets cleared by writing a 1 to it.
	/// @tparam reg ... Register
	/// @tparam bit ... bitnumber
	template<zol::Register reg, uint8_t bit>
	struct bit_rc1 {
		static bool read() {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			return reg::get_bit(bit);
		}
		static void clear() {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			reg::set_bit(bit);
		}
	};

	/// @brief Bit which gets toggled by writing a 1 to it.
	/// @tparam reg ... Register
	/// @tparam bit ... bitnumber
	template<zol::Register reg, uint8_t bit>
	struct bit_t {
		static void toggle() {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			reg::set_bit(bit);
		}
	};

	template<zol::Register reg, uint8_t bit>
	struct bit_rs {
		static bool read() {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			return reg::get_bit(bit);
		}

		static void set() {
			using namespace zol::check_types;
			static_assert(bit < width<typename reg::type_t>(),
						  "Bitnumber out of bounds");
			return reg::set_bit(bit);
		}
	};
}
