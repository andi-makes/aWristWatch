cmake_minimum_required(VERSION 3.16)

project(zol ASM CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include(arm-cmake-toolchains/utils.cmake)
include(arm-cmake-toolchains/clang_utils.cmake)

include(chip/stm32l011.cmake)

add_subdirectory(lib)
add_subdirectory(app)
