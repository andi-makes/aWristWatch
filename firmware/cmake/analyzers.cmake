option(ENABLE_CPPCHECK "Enable static analysis with cppcheck" OFF)
option(ENABLE_CLANG_TIDY "Enable static analysis with clang-tidy" OFF)

if(ENABLE_CPPCHECK)
    find_program(CPPCHECK cppcheck)
    if(CPPCHECK)
        add_custom_target(
            "cppcheck"
            ALL
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

execute_process(
    COMMAND python3 ${CMAKE_SOURCE_DIR}/cmake/compile_commands.py ${CMAKE_BINARY_DIR}/compile_commands.json
    OUTPUT_VARIABLE CLANG_TIDY_SOURCES
)

if(ENABLE_CLANG_TIDY)
    find_program(CLANG_TIDY clang-tidy)
    if(CLANG_TIDY)
        add_custom_target(
            "clang-tidy"
            ALL
            COMMAND
            ${CLANG_TIDY} 
            --quiet
            --extra-arg=--sysroot=${CMAKE_SYSROOT}
            --extra-arg=--target=arm-none-eabi
            --extra-arg=-I${CMAKE_SYSROOT}/include
            --extra-arg=-I${CMAKE_SYSROOT}/include/c++/10.2.1
            --extra-arg=-I${CMAKE_SYSROOT}/include/c++/10.2.1/arm-none-eabi/thumb/v6-m/nofp/
            -p ${CMAKE_BINARY_DIR}
            --export-fixes=${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/clang-tidy.yml
            ${CLANG_TIDY_SOURCES}
            WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/app
        )
    else()
        message(SEND_ERROR "Could not find clang-tidy!")
    endif()
endif()

