#pragma once
#include "register.hpp"

#include <cinttypes>

namespace zol {
	/// @brief Represents a grouping of bits in a Register
	/// @tparam reg ... Register in which the fiel occurs
	/// @tparam start ...  Start bit position of the field
	/// @tparam width ... Width of the field. For Example, a field `XX` has a
	/// width of 2.
	template<zol::Register reg, uint8_t start, uint8_t width>
	struct field_rw {
		/// @brief Sets the field to value.
		/// @throws Compile time error if value does not fit into the field.
		static void set(typename reg::type_t value) {
			// static_assert((1 << width) < value,
			// 			  "value is greater than allowed bit width");
			reg::and_reg(~(((1 << width) - 1) << start));
			reg::or_reg(value << start);
		}

		/// @brief Get the value of the field
		/// @returns the value of the field, duh
		static typename reg::type_t get() {
			return reg::get_reg() & (((1 << width) - 1) << start);
		}

		field_rw() = delete;
	};

	template<zol::Register reg, uint8_t start, uint8_t width>
	struct field_r {
		static typename reg::type_t get() {
			return reg::get_reg() & (((1 << width) - 1) << start);
		}

		field_r() = delete;
	};
}
