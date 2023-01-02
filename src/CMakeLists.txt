set(LIBRARY_NAME vlc-win10smtc)

add_library(${LIBRARY_NAME} SHARED module.cpp)

target_include_directories(${LIBRARY_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ${LIBVLC_INCLUDE_DIRS})

target_link_libraries(${LIBRARY_NAME} PRIVATE ${LIBVLC_LIBRARIES} WindowsApp.lib)

target_compile_definitions(${LIBRARY_NAME} PUBLIC MODULE_STRING="win10smtc")
