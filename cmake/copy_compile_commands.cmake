# Define paths for compile commands
set(COMPILE_COMMANDS_SOURCE "${CMAKE_BINARY_DIR}/compile_commands.json")
set(COMPILE_COMMANDS_DESTINATION "${CMAKE_SOURCE_DIR}/compile_commands.json")

# Add custom target to copy compile commands
add_custom_target(copy_compile_commands ALL
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${COMPILE_COMMANDS_SOURCE} ${COMPILE_COMMANDS_DESTINATION}
    DEPENDS ${COMPILE_COMMANDS_SOURCE}
    COMMENT "Copying compile_commands.json to the root directory"
)
