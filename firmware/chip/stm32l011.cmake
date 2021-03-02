set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin")

set(LINKER_SCRIPT "${PROJECT_SOURCE_DIR}/chip/STM32L011F4Px_FLASH.ld")
set(STARTUP_SCRIPT "${PROJECT_SOURCE_DIR}/chip/startup_stm32l011xx.s")

set(MICROCONTROLLER_FLAGS "-mcpu=cortex-m0plus" "--specs=nano.specs" "-mfloat-abi=soft" "-mthumb")
string(REPLACE ";" " " MICROCONTROLLER_FLAGS_STR "${MICROCONTROLLER_FLAGS}")

set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -x assembler-with-cpp")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${LINKER_SCRIPT} -Wl,--gc-sections -static ${MICROCONTROLLER_FLAGS_STR}") # works

set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)

function(add_zol_executable EXECUTABLE_NAME)
    set(BIN_FOLDER ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${EXECUTABLE_NAME})

    add_executable(
        ${EXECUTABLE_NAME}.elf
        "${STARTUP_SCRIPT}"
		${ARGN}
	)

	target_link_libraries(
		${EXECUTABLE_NAME}.elf
		zol
    )

	target_compile_definitions(
		${EXECUTABLE_NAME}.elf PRIVATE 
		"STM32" 
		"STM32L011F4Px" 
		"STM32L0"
	)

	target_compile_options(
		${EXECUTABLE_NAME}.elf PRIVATE 
		${MICROCONTROLLER_FLAGS}
		"$<$<COMPILE_LANGUAGE:CXX>:-ffunction-sections;-fdata-sections;-fno-exceptions;-fno-rtti;-fno-threadsafe-statics;-fno-use-cxa-atexit>"
	)

	add_warnings(${EXECUTABLE_NAME}.elf)

	target_link_options(
		${EXECUTABLE_NAME}.elf
		PRIVATE
		"-Wl,-Map,${BIN_FOLDER}.map"
	)

	add_custom_command(
		OUTPUT ${BIN_FOLDER}.bin
		COMMAND
		${ARM_TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}objcopy -O binary ${BIN_FOLDER}.elf ${BIN_FOLDER}.bin
		DEPENDS ${EXECUTABLE_NAME}.elf
	)

	add_custom_command(
		OUTPUT ${BIN_FOLDER}.size
		DEPENDS ${BIN_FOLDER}.bin
		COMMAND
		${ARM_TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}size -t -d ${BIN_FOLDER}.elf >> ${BIN_FOLDER}.size
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
		DEPENDS ${BIN_FOLDER}.bin ${BIN_FOLDER}.lss ${BIN_FOLDER}.size
	)

	get_directory_property(clean_files ADDITIONAL_CLEAN_FILES)
	set_directory_properties(
		PROPERTIES
		ADDITIONAL_CLEAN_FILES "${clean_files};${BIN_FOLDER}.map;${BIN_FOLDER}.bin;${BIN_FOLDER}.lss;${BIN_FOLDER}.size"
    )
endfunction(add_zol_executable)
