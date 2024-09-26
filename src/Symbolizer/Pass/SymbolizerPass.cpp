#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/Cloning.h"

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/InstIterator.h"

#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/InlineAsm.h"

#include <vector>
#include <string>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#include <iostream>
#include <cstdio>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>
#include <filesystem>
#include <sstream>


using namespace llvm;

void strip_new_line(std::string& str) {
	if (!str.empty() && str.back() == '\n') {
		str.erase(str.length() - 1);
	}
}


// Function to split a string by "::"
std::vector<std::string> splitString(const std::string& str, const std::string& delimiter) {
	std::vector<std::string> tokens;
	size_t start = 0;
	size_t end = str.find(delimiter);

	while (end != std::string::npos) {
		tokens.push_back(str.substr(start, end - start));
		start = end + delimiter.length();
		end = str.find(delimiter, start);
	}
	tokens.push_back(str.substr(start));

	return tokens;
}

// Function to execute rustfilt and capture the output
std::string exec_rustfilt(const std::string& mangled_name) {
	std::array<char, 128> buffer;
	std::string result;
	std::string command = "rustfilt " + mangled_name;

	// Open a pipe to run the rustfilt command
	std::unique_ptr<FILE, decltype(&pclose)> pipe(popen(command.c_str(), "r"), pclose);

	// Check if the pipe was successfully opened
	if (!pipe) {
		exit(-1);
	}

	// Read the output of rustfilt from the pipe
	while (fgets(buffer.data(), buffer.size(), pipe.get()) != nullptr) {
		result += buffer.data();
	}

	strip_new_line(result);
	return result;
}


/**
 * Run as
 * opt -load-pass-plugin ./build/Pass/SymbolizerPass.so tests/test.ll -O0  -o o.ll
 */

namespace {


	struct Symbolizer : PassInfoMixin<Symbolizer> {
		PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
			// In the case of Rust, it adds a bunch of functions that we don't care about
			// We will only consider the function that has the same name as the file.
			// Note: we have separated out each function in its own file so this isn't a problem
			std::string filename = M.getModuleIdentifier();

			std::filesystem::path filepath(filename);
			std::string filename_without_extension = splitString(filepath.stem().string(), ".")[0];

			std::vector<Function*> remove_functions;

			for (Function& F: M.functions()) {
				if (!F.hasName()) {
					remove_functions.push_back(&F);
					//F.eraseFromParent();
					continue;
				}
				std::string demangled_name = exec_rustfilt(F.getName().str());
				//llvm::errs() << "Demangled name: " << demangled_name << "\n";
				std::vector<std::string> result = splitString(demangled_name, "::");
				std::string function_name = result[result.size() -1];
				/*
				llvm::errs() << "Demangled function name without namespace: " << function_name << "\n";
				llvm::errs() << "Filename without extension: " << filename_without_extension << "\n";
				llvm::errs() << "Equals = " << (filename_without_extension == function_name) << "\n";
				*/

				if (filename_without_extension != function_name) {
					remove_functions.push_back(&F);
					//F.eraseFromParent();
					//llvm::errs() << "Found match: " << function_name << " : " << F.getName() << "\n";
				}
				/*
				if (F.getName() == "main") {
					F.eraseFromParent();
				}
				*/
			}
			for (Function* F: remove_functions) {
				F->deleteBody();
			}
			return PreservedAnalyses::none();
		}

	}; // end of struct
}  // end of anonymous namespace

/* New PM Registration */
llvm::PassPluginLibraryInfo getSymbolizerPluginInfo() {
	return {LLVM_PLUGIN_API_VERSION, "Symbolizer", LLVM_VERSION_STRING,
		[](PassBuilder &PB) {
			PB.registerOptimizerLastEPCallback (
					[](llvm::ModulePassManager &PM, OptimizationLevel Level) {
					PM.addPass(Symbolizer());
					});
		}};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
	return getSymbolizerPluginInfo();
}
