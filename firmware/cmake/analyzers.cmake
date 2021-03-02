option(ENABLE_CPPCHECK "Enable static analysis with cppcheck" OFF)
option(ENABLE_CLANG_TIDY "Enable static analysis with clang-tidy" OFF)

set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

if(ENABLE_CPPCHECK)
    find_program(CPPCHECK cppcheck)
    if(CPPCHECK)
        add_custom_target(
            "cppcheck"
            COMMAND
            ${CPPCHECK}
            --quiet
            --suppress=missingInclude
            -I ${PROJECT_SOURCE_DIR}/api
            -I ${PROJECT_SOURCE_DIR}/app
            --enable=all
            --inline-suppr
            "--template=[{file}:{line}] [{severity},{id}] {message}"
            --inconclusive
            --output-file=${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/cppcheck.txt
            --project=${CMAKE_BINARY_DIR}/compile_commands.json
            WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/app
        )
    else()
        message(SEND_ERROR "Could not find cppcheck!")
    endif()
endif()

set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS "${CMAKE_SOURCE_DIR}/scripts/clang-tidy.py")

if(ENABLE_CLANG_TIDY)
    find_program(CLANG_TIDY clang-tidy)
    if(CLANG_TIDY)
        add_custom_target(
            "clang-tidy"
            COMMAND
            "${CMAKE_SOURCE_DIR}/scripts/clang-tidy.py"
            ${CMAKE_BINARY_DIR}
            ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/clang-tidy.yml
            ${CLANG_TIDY} 
            --quiet
            --extra-arg=--sysroot=${CMAKE_SYSROOT}
            --extra-arg=--target=arm-none-eabi
            --extra-arg=-I${CMAKE_SYSROOT}/include
            --extra-arg=-I${CMAKE_SYSROOT}/include/c++/10.2.1
            --extra-arg=-I${CMAKE_SYSROOT}/include/c++/10.2.1/arm-none-eabi/thumb/v6-m/nofp/
        )
    else()
        message(SEND_ERROR "Could not find clang-tidy!")
    endif()
endif()

