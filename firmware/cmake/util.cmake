# For ccmake
set_property(
    CACHE CMAKE_BUILD_TYPE
    PROPERTY STRINGS
        "Debug"
        "Release"
        "MinSizeRel"
        "RelWithDebInfo"
)

if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    add_compile_options(
        "-fdiagnostics-color=always" 
        # "-fno-diagnostics-show-caret" # Does not work with clang-tidy
    )
endif()