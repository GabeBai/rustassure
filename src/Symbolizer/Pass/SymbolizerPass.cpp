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
#include "llvm/Support/ErrorHandling.h"

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

		std::vector<StructType*> visited_struct_types;

		void remove_unneeded_functions(Module& M) {
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
				
			}
			for (Function* F: remove_functions) {
				F->deleteBody();
			}
			Function* main_function = M.getFunction("main");
			if (main_function) {
				main_function->eraseFromParent();
			}
		}

		void mark_symbolic(Module& M, AllocaInst* value, IRBuilder<>& Builder) {
			LLVMContext& ctx = M.getContext();
			const DataLayout& DL = M.getDataLayout();

			// Check that we have the declaration of the function klee_make_symbolic in our sights
			Function* klee_make_symbolic_func = M.getFunction("klee_make_symbolic");

			if (!klee_make_symbolic_func) {
				llvm::report_fatal_error("Should have created the klee_make_symbolic function.");
			}

			// We will first call klee_make_symbolic, so we build the args
			// int a;
			// klee_make_symbolic(&a, sizeof(a), "a");
			// function(a);
			std::vector<Value*> klee_make_symbolic_args;
			Type* void_ptr_type = PointerType::get(IntegerType::getInt8Ty(ctx), 0);
			klee_make_symbolic_args.push_back(Builder.CreateBitCast(value, void_ptr_type));
			klee_make_symbolic_args.push_back(ConstantInt::get(IntegerType::get(ctx, 64), DL.getTypeAllocSize(value->getType()->getPointerElementType())));
			Value* arg_name = Builder.CreateGlobalString(value->getName(), "klee_sym_arg_name", 0, &M);
			// Set the global string as non-constant (writable)
			GlobalVariable* global_arg_name = cast<GlobalVariable>(arg_name);
			global_arg_name->setConstant(false);
			// Set the linkage to PrivateLinkage to ensure no merging
			global_arg_name->setLinkage(llvm::GlobalValue::PrivateLinkage);
			// Disable unnamed_addr to prevent merging based on the contents
			global_arg_name->setUnnamedAddr(llvm::GlobalValue::UnnamedAddr::None);
			klee_make_symbolic_args.push_back(Builder.CreateBitCast(global_arg_name, void_ptr_type)); // Must cast it
			Builder.CreateCall(klee_make_symbolic_func, klee_make_symbolic_args);
		}

			
		void initialize_inner_pointer(Module& M, IRBuilder<>& Builder, Value* pointer, PointerType* ptr_type, StringRef name, std::vector<Value*>& nested_pointers) {
			// If it is, then allocate something and store it
			Value* stack_object = create_object_and_mark_symbolic(M, Builder, ptr_type->getPointerElementType(), name);
			// Store it to the pointer
			if (pointer->getType()->getPointerElementType() != stack_object->getType()) {
				stack_object = Builder.CreateBitCast(stack_object, pointer->getType()->getPointerElementType());
			}
			Builder.CreateStore(stack_object, pointer);
			// llvm::errs() << "Created and stored: " << *stack_object << " of type " << *(ptr_type->getPointerElementType()) << " to " << *pointer << "\n";
			// If the ptr_type was a pointer or a struct type (with potentially nested pointers) we
			// will allocate objects and mark them symbolic for the nested pointers tooooo....
			if (isa<PointerType>(ptr_type->getPointerElementType())) {
				nested_pointers.push_back(stack_object);
			}	 
			if (isa<StructType>(ptr_type->getPointerElementType())) {
				if (std::find(visited_struct_types.begin(), visited_struct_types.end(), ptr_type->getPointerElementType()) == visited_struct_types.end()) {
					nested_pointers.push_back(stack_object);
				}
			}
		}

		void initialize_inner_objects(Module& M, IRBuilder<>& Builder, Value* stack_var) {
			LLVMContext& ctx = M.getContext();

			// We should keep following nested pointers and allocating them and marking them as symbolic
			std::vector<Value*> nested_pointers;
			nested_pointers.push_back(stack_var);

			llvm::errs() << "Initializing inner object: " << *stack_var << "\n";

			while (!nested_pointers.empty()) {
				Value* pointer = nested_pointers.back();
				nested_pointers.pop_back();
				// Is it a C pointer?
				if (PointerType* ptr_type = dyn_cast<PointerType>(pointer->getType()->getPointerElementType())) {
					initialize_inner_pointer(M, Builder, pointer, ptr_type, StringRef("ptr"), nested_pointers);

				}
				if (StructType* struct_type = dyn_cast<StructType>(pointer->getType()->getPointerElementType())) { // these are stack variables
					visited_struct_types.push_back(struct_type);
					for (unsigned int i = 0; i < struct_type->getNumElements(); i++) {
						Type* field_type = struct_type->getElementType(i);
						// If it is a pointer, then we try to initialize it and make it work
						if (PointerType* field_ptr_type = dyn_cast<PointerType>(field_type)) {
							// Load the struct
							// LoadInst* struct_load_inst = Builder.CreateLoad(pointer->getType()->getPointerElementType(), pointer); 
							Value* gep = Builder.CreateStructGEP(
									struct_type, 
									pointer, 
									i,
									"gep");
							initialize_inner_pointer(M, Builder, gep, field_ptr_type, "field", nested_pointers);
						}
					}
				}
			}
		}

		Value* create_object_and_mark_symbolic(Module& M, IRBuilder<>& Builder, Type* type, StringRef name) {
			// special handling for i8* which could be strings
			if (IntegerType* integer_type = dyn_cast<IntegerType>(type)) {
				if (integer_type->getBitWidth() == 8) {
					type = ArrayType::get(integer_type, 100);
				}
			}
			AllocaInst* stackArg = Builder.CreateAlloca(type, 0, name);
			// Any inner objects, should also be initialized
			initialize_inner_objects(M, Builder, stackArg);
			mark_symbolic(M, stackArg, Builder);
			return stackArg;
		}

		void symbolize_function_args(Module& M) {
			LLVMContext& ctx = M.getContext();
			ArrayRef<Type*> args;
			FunctionType* main_function_type = FunctionType::get(FunctionType::getVoidTy(ctx), args, false);
			Function* main_function = Function::Create(main_function_type, Function::ExternalLinkage, "main", M);

			// Find the other function in the file
			Function* target_function = nullptr;
			for (Function& F: M.functions()) {
				if (!F.isDeclaration()) {
					target_function = &F;
				}
			}
			// Target function
			// Add an entry block to the main function
			BasicBlock* EntryBB = BasicBlock::Create(ctx, "entry", main_function);
			IRBuilder<> Builder(ctx);

			Builder.SetInsertPoint(EntryBB);



			std::vector<Value*> actual_args;
			// Now create a stack object of each of the argument type
			for (Argument& arg: target_function->args()) {
				Value* stackArg = create_object_and_mark_symbolic(M, Builder, arg.getType(), arg.getName());
				// We will call the main function later, so we store the args
				// We load this stack arg
				LoadInst* stack_load_inst = Builder.CreateLoad(stackArg->getType()->getPointerElementType(), stackArg);
				actual_args.push_back(stack_load_inst);
			}

			// Now we pass these arguments to the actual function
			Builder.CreateCall(target_function, actual_args);


			Builder.CreateRetVoid();
		}

		void create_klee_function_decls(Module& M) {
			LLVMContext& ctx = M.getContext();
			// klee_make_symbolic(void*ptr , uint64_t size, char* label)
			Type* void_ptr_type = PointerType::get(IntegerType::getInt8Ty(ctx), 0);
			Type* int64_type = IntegerType::get(ctx, 64);
			Type* char_ptr_type = PointerType::get(IntegerType::get(ctx, 8), 0);
			SmallVector<Type*, 5> types;
			types.push_back(void_ptr_type);
			types.push_back(int64_type);
			types.push_back(char_ptr_type);
			ArrayRef<Type*> argTypes(types);
			FunctionType* klee_make_symbolic_type = FunctionType::get(FunctionType::getVoidTy(ctx), argTypes, false);
			Function::Create(klee_make_symbolic_type, Function::ExternalLinkage, "klee_make_symbolic", M);
		}

		PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
			create_klee_function_decls(M);
			remove_unneeded_functions(M);
			symbolize_function_args(M);
			M.dump();
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
