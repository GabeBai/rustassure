cmake_minimum_required(VERSION 3.15)
project(SymbolizerPass LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++ -fno-omit-frame-pointer")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")

find_package(LLVM REQUIRED CONFIG)
find_package(nlohmann_json 3.10 REQUIRED)

message(STATUS "LLVM Version: ${LLVM_PACKAGE_VERSION}")
message(STATUS "LLVM Include Dirs: ${LLVM_INCLUDE_DIRS}")
message(STATUS "LLVM Libraries: ${LLVM_LIBRARIES}")

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

add_library(SymbolizerPass MODULE SymbolizerPass.cpp)

target_link_libraries(SymbolizerPass
		LLVMSupport
		LLVMIRReader
		LLVMTransformUtils
		LLVMAnalysis
		LLVMOption
		LLVMDemangle
		nlohmann_json::nlohmann_json
		LLVMCore
		C++
)

set_target_properties(SymbolizerPass PROPERTIES PREFIX "")

