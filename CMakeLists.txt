cmake_minimum_required(VERSION 3.12)

project(vlc-win10smtc VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

find_package(LibVLC REQUIRED)

add_subdirectory(src)
