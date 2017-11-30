file(GLOB SRC "*.h" "*.cpp")
set(INCL_DIRS . )

# Create a library which includes the source files.
# The extension is already found. Any number of sources could be listed here.
add_library (pevents STATIC ${SRC})

# Make sure the compiler can find include files for our library
# when other libraries or executables link to it
target_include_directories (pevents PRIVATE ${INCL_DIRS})
target_compile_definitions(pevents PRIVATE WFMO)
