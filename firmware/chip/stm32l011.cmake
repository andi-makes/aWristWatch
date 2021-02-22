set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin")


set(LINKER_SCRIPT "${PROJECT_SOURCE_DIR}/chip/STM32L011F4Px_FLASH.ld")
set(STARTUP_SCRIPT "${PROJECT_SOURCE_DIR}/chip/startup_stm32l011xx.s")

set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -x assembler-with-cpp")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -mcpu=cortex-m0plus -T ${LINKER_SCRIPT} --specs=nosys.specs -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb") # works

add_compile_options(
	"-mcpu=cortex-m0plus" "--specs=nano.specs" "-mfloat-abi=soft" "-mthumb"
	"$<$<COMPILE_LANGUAGE:CXX>:-g;-DSTM32;-DSTM32L011F4Px;-DSTM32L0;-Os;-ffunction-sections;-fdata-sections;-fno-exceptions;-fno-rtti;-fno-threadsafe-statics;-fno-use-cxa-atexit;-Wall;-Wextra;-pedantic>"
)

set(EXTRA_INCLUDES "-I/home/andi/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include -I/home/andi/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/c++/10.2.1 -I/home/andi/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/c++/10.2.1/arm-none-eabi")

find_program(CPPCHECK cppcheck)
if(CPPCHECK)
	set(CMAKE_CXX_CPPCHECK
		${CPPCHECK}
		--suppress=missingInclude
		--enable=all
		--inline-suppr
		"--template=[{file}:{line}] [{severity},{id}] {message}"
		--inconclusive)
else()
	message(SEND_ERROR "cppcheck requested but executable not found")
endif()

find_program(CLANGTIDY clang-tidy)
if(CLANGTIDY)
	set(CMAKE_CXX_CLANG_TIDY ${CLANGTIDY} 
	-extra-arg=-Wno-unknown-warning-option 
	-format-style=file
	--
	--target=arm-none-eabi -mcpu=cortex-m0plus -mfloat-abi=soft -mthumb
	${EXTRA_INCLUDES})
else()
	message(SEND_ERROR "clang-tidy requested but executable not found")
endif()

set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)

function(add_zol_executable EXECUTABLE_NAME)
    set(BIN_FOLDER ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${EXECUTABLE_NAME})

    add_executable(
        ${EXECUTABLE_NAME}.elf
        "${STARTUP_SCRIPT}"
		${ARGN}
	)

	target_link_options(
		${EXECUTABLE_NAME}.elf
		PRIVATE
		"-Wl,-Map,${BIN_FOLDER}.map"
	)

	add_custom_command(
		OUTPUT ${BIN_FOLDER}.bin
		COMMAND
		${ARM_TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}objcopy -O binary ${BIN_FOLDER}.elf ${BIN_FOLDER}.bin
		COMMAND
		${ARM_TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}size -t -d ${BIN_FOLDER}.elf
		DEPENDS ${EXECUTABLE_NAME}.elf
	)

	add_custom_command(
		OUTPUT ${BIN_FOLDER}.lss
		COMMAND
		${ARM_TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}objdump -h -d ${BIN_FOLDER}.elf > ${BIN_FOLDER}.lss
		DEPENDS ${EXECUTABLE_NAME}.elf
	)

	add_custom_target(
		${EXECUTABLE_NAME}
		ALL
		DEPENDS ${BIN_FOLDER}.bin ${BIN_FOLDER}.lss
	)

	find_program(iwyu_tool_path NAMES iwyu_tool)
	if (iwyu_tool_path)
		add_custom_target(iwyu
			ALL      # Remove ALL if you don't iwyu to be run by default.
			COMMAND "${iwyu_tool_path}" -p "${CMAKE_BINARY_DIR}" -- --target=arm-none-eabi -mcpu=cortex-m0plus -mfloat-abi=soft -mthumb ${EXTRA_INCLUDES}
			COMMENT "Running include-what-you-use tool"
			VERBATIM
		)
	endif()

	get_directory_property(clean_files ADDITIONAL_MAKE_CLEAN_FILES)
	set_directory_properties(
		PROPERTIES
		ADDITIONAL_MAKE_CLEAN_FILES "${clean_files};${BIN_FOLDER}.map;${BIN_FOLDER}.bin;${BIN_FOLDER}.lss"
    )
    
    target_link_libraries(
		${EXECUTABLE_NAME}.elf
		zol
    )
endfunction(add_zol_executable)
