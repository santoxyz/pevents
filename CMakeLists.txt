# For more information about using CMake with Android Studio, read the
# documentation: https://d.android.com/studio/projects/add-native-code.html

# Sets the minimum version of CMake required to build the native library.
cmake_minimum_required(VERSION 3.4.1)

project (pevents)
set(CMAKE_CXX_FLAGS "-fpermissive -ggdb")

add_definitions(-DWFMO -DLINUX)
add_subdirectory (src)
