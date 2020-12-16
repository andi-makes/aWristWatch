cmake_minimum_required(VERSION 3.16)

include(cmake/arm.cmake)

project(zol ASM C CXX)

include(chip/stm32l011.cmake)

add_subdirectory(lib)
add_subdirectory(app)
