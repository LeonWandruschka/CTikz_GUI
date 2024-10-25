cmake_minimum_required(VERSION 3.29.5)

add_library(TEST test.cpp)

set(SRCS main.cpp)

if(APPLE)
    # create bundle on apple compiles
    add_executable(${PROJECT_NAME} MACOSX_BUNDLE ${SRCS})

    # Set a custom plist file for the app bundle - needed for Mac OS Retina display
    set_target_properties(${PROJECT_NAME} PROPERTIES MACOSX_BUNDLE_INFO_PLIST ${CMAKE_SOURCE_DIR}/Info.plist)
else()
    # the WIN32 is needed for Windows in order for it to look for WinMain
    # instead of the main function. This is ignored on other systems,
    # so it works on all platforms
    add_executable(${PROJECT_NAME} WIN32 ${SRCS} main.exe.manifest)
endif()

target_link_libraries(${PROJECT_NAME} PRIVATE wxcore wxnet)

