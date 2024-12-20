set(CMAKE_CXX_FLAGS "-O0 -ggdb")
set(CMAKE_C_FLAGS "-O0 -ggdb")

# Set optimization level for Debug build type
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O0")
set(CMAKE_C_FLAGS_RELWITHDEBINFO "-O0")

#Debug Flag
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")

add_library(SymbolizerPass MODULE SymbolizerPass.cpp)

if(NOT ${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
	target_link_libraries(SymbolizerPass 
		${LLVM_LIBRARIES}
		LLVMCore
		LLVMSupport
		LLVMIRReader
		LLVMTransformUtils
		LLVMAnalysis
	)
endif()
