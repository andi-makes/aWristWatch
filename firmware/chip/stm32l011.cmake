set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin")


set(LINKER_SCRIPT "${PROJECT_SOURCE_DIR}/chip/STM32L011F4Px_FLASH.ld")
set(STARTUP_SCRIPT "${PROJECT_SOURCE_DIR}/chip/startup_stm32l011xx.s")

set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -x assembler-with-cpp")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -mcpu=cortex-m0plus -T ${LINKER_SCRIPT} --specs=nosys.specs -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb") # works

add_compile_options(
	"-mcpu=cortex-m0plus" "--specs=nano.specs" "-mfloat-abi=soft" "-mthumb"
	"$<$<COMPILE_LANGUAGE:CXX>:-fconcepts;-g;-DSTM32;-DSTM32L011F4Px;-DSTM32L0;-Os;-ffunction-sections;-fdata-sections;-fno-exceptions;-fno-rtti;-fno-threadsafe-statics;-fno-use-cxa-atexit;-Wall;-fstack-usage>"
)

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
		${ARM_TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}objdump -h -S ${BIN_FOLDER}.elf > ${BIN_FOLDER}.lss
		DEPENDS ${EXECUTABLE_NAME}.elf
	)

	add_custom_target(
		${EXECUTABLE_NAME}
		ALL
		DEPENDS ${BIN_FOLDER}.bin ${BIN_FOLDER}.lss
	)

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
