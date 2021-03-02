option(ENABLE_ANALYZERS "Enable static analyzers" OFF)
if(ENABLE_ANALYZERS)
    set(CMAKE_EXPORT_COMPILE_COMMANDS 1)
    option(ENABLE_CPPCHECK "Enable static analysis with cppcheck" OFF)
    option(ENABLE_CLANG_TIDY "Enable static analysis with clang-tidy" OFF)

    set(ANALYZER_DEPENDS "")

    if(ENABLE_CPPCHECK)
        find_program(CPPCHECK cppcheck)
        if(CPPCHECK)
            add_custom_target("cppcheck"
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
                BYPRODUCTS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/cppcheck.txt
                COMMENT "Checking project with cppcheck..."
            )
            list(APPEND ANALYZER_DEPENDS "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/cppcheck.txt")
        else()
            message(SEND_ERROR "Could not find cppcheck!")
        endif()
    endif()

    if(ENABLE_CLANG_TIDY)
        set(CLANG_TIDY_PY "${CMAKE_SOURCE_DIR}/scripts/clang-tidy.py")
        find_program(CLANG_TIDY clang-tidy)
        if(CLANG_TIDY)
            add_custom_target("clang-tidy"
                COMMAND
                ${CLANG_TIDY_PY}
                ${CMAKE_BINARY_DIR}
                ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/clang-tidy.yml
                ${CLANG_TIDY} 
                --quiet
                --extra-arg=--sysroot=${CMAKE_SYSROOT}
                --extra-arg=--target=arm-none-eabi
                --extra-arg=-I${CMAKE_SYSROOT}/include
                --extra-arg=-I${CMAKE_SYSROOT}/include/c++/10.2.1
                --extra-arg=-I${CMAKE_SYSROOT}/include/c++/10.2.1/arm-none-eabi/thumb/v6-m/nofp/
                BYPRODUCTS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/clang-tidy.yml
                COMMENT "Checking project with clang-tidy..."
            )
            list(APPEND ANALYZER_DEPENDS "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/clang-tidy.yml")
        else()
            message(SEND_ERROR "Could not find clang-tidy!")
        endif()
    endif()

    list(LENGTH ANALYZER_DEPENDS ACTIVE_ANALYZERS)

    if(${ACTIVE_ANALYZERS} GREATER 0)
        add_custom_target("analyze"
            DEPENDS ${ANALYZER_DEPENDS}
            COMMENT "Checking project..."
        )
    endif()

endif()
