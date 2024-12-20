set(CMAKE_CXX_FLAGS "-O0 -ggdb")
set(CMAKE_C_FLAGS "-O0 -ggdb")

# Set optimization level for Debug build type
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O0")
set(CMAKE_C_FLAGS_RELWITHDEBINFO "-O0")


find_package(nlohmann_json 3.10 REQUIRED)
#Debug Flag
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")

add_library(SymbolizerPass MODULE SymbolizerPass.cpp)

execute_process(COMMAND llvm-config --cxxflags OUTPUT_VARIABLE LLVM_CXXFLAGS OUTPUT_STRIP_TRAILING_WHITESPACE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${LLVM_CXXFLAGS}")

execute_process(COMMAND llvm-config --ldflags OUTPUT_VARIABLE LLVM_LDFLAGS OUTPUT_STRIP_TRAILING_WHITESPACE)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${LLVM_LDFLAGS}")

if(NOT ${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
	target_link_libraries(SymbolizerPass 
		${LLVM_LIBRARIES}
		LLVMCore
		LLVMSupport
		LLVMIRReader
		LLVMTransformUtils
		LLVMAnalysis
        LLVMOption
        nlohmann_json::nlohmann_json
	)
endif()
