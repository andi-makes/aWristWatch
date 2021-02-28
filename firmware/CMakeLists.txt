cmake_minimum_required(VERSION 3.16)

project(zol ASM CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include(chip/stm32l011.cmake)

add_subdirectory(api)
add_subdirectory(app)
