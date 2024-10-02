set(CMAKE_CXX_FLAGS "-O0 -ggdb")
set(CMAKE_C_FLAGS "-O0 -ggdb")

# Set optimization level for Debug build type
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O0")
set(CMAKE_C_FLAGS_RELWITHDEBINFO "-O0")

add_library(SymbolizerPass MODULE SymbolizerPass.cpp)
