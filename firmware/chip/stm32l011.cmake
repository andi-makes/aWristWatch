# arm-none-eabi-gcc -mcpu=cortex-m0plus -c -x assembler-with-cpp --specs=nano.specs -mfloat-abi=soft -mthumb
# arm-none-eabi-g++ -mcpu=cortex-m0plus -std=gnu++14 -DSTM32 -DSTM32L011F4Px -DSTM32L0 -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-threadsafe-statics -fno-use-cxa-atexit -Wall -fstack-usage --specs=nano.specs -mfloat-abi=soft -mthumb
# arm-none-eabi-g++ -mcpu=cortex-m0plus -T"C:\Users\andre\STM32CubeIDE\workspace_1.4.0\Watch\STM32L011F4PX_FLASH.ld" --specs=nosys.specs -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group

# arm-none-eabi-g++ -mcpu=cortex-m0plus -std=gnu++14 -DSTM32 -DSTM32L011F4Px -DSTM32L0 -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-threadsafe-statics -fno-use-cxa-atexit -Wall -fstack-usage --specs=nano.specs -mfloat-abi=soft -mthumb -g  -mcpu=cortex-m0plus -T /mnt/c/Users/andre/projects/aWristWatch/firmware/chip/STM32L011F4Px_FLASH.ld --specs=nosys.specs -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group -Wl,-Map,/mnt/c/Users/andre/projects/aWristWatch/firmware/bin/watch.map CMakeFiles/watch.elf.dir/__/chip/startup_stm32l011xx.s.obj CMakeFiles/watch.elf.dir/main.cpp.obj  -o ../../bin/watch.elf 

# Finished building target: Watch.elf
 
# arm-none-eabi-size   Watch.elf 
# arm-none-eabi-objdump -h -S  Watch.elf  > "Watch.list"

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin")

set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -x assembler-with-cpp")
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mcpu=cortex-m0plus -std=gnu++14 -DSTM32 -DSTM32L011F4Px -DSTM32L0 -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-threadsafe-statics -fno-use-cxa-atexit -Wall -fstack-usage --specs=nano.specs -mfloat-abi=soft -mthumb")

set(LINKER_SCRIPT "${PROJECT_SOURCE_DIR}/chip/STM32L011F4Px_FLASH.ld")
set(STARTUP_SCRIPT "${PROJECT_SOURCE_DIR}/chip/startup_stm32l011xx.s")


# set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -mcpu=cortex-m0plus -T ${LINKER_SCRIPT} --specs=nosys.specs -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group") # works
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -mcpu=cortex-m0plus -T ${LINKER_SCRIPT} --specs=nosys.specs -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb") # works
# set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -mcpu=cortex-m0plus -T ${LINKER_SCRIPT} --specs=nosys.specs -mthumb")

function(add_zol_executable EXECUTABLE_NAME)
    set(BIN_FOLDER ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${EXECUTABLE_NAME})

    add_executable(
        ${EXECUTABLE_NAME}.elf
        "${STARTUP_SCRIPT}"
		${ARGN}
	)

	# target_compile_options(
	# 	${EXECUTABLE_NAME}.elf
	# 	PRIVATE
	# 	#$<$<COMPILE_LANGUAGE:CXX>:-std=c++14>
	# 	#mcpu=cortex-m0plus
	# 	"-mcpu=cortex-m0plus"
	# 	$<$<COMPILE_LANGUAGE:CXX>:"-std=gnu++14">
	# 	"-DSTM32" "-DSTM32L011F4Px" "-DSTM32L0" "-Os" "-ffunction-sections" "-fdata-sections" "-fno-exceptions" "-fno-rtti" "-fno-threadsafe-statics" "-fno-use-cxa-atexit" "-Wall" "-fstack-usage" "--specs=nano.specs" "-mfloat-abi=soft" "-mthumb"
	# )

	target_compile_options(
		${EXECUTABLE_NAME}.elf
		PRIVATE
		#$<$<COMPILE_LANGUAGE:CXX>:-std=c++14>
		#mcpu=cortex-m0plus
		"-mcpu=cortex-m0plus" "--specs=nano.specs" "-mfloat-abi=soft" "-mthumb"
		$<$<COMPILE_LANGUAGE:CXX>:-std=gnu++2a;-fconcepts;-g3;-DSTM32;-DSTM32L011F4Px;-DSTM32L0;-Os;-ffunction-sections;-fdata-sections;-fno-exceptions;-fno-rtti;-fno-threadsafe-statics;-fno-use-cxa-atexit;-Wall;-fstack-usage>
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
		c
		m
		stdc++
		supc++
    )
endfunction(add_zol_executable)
