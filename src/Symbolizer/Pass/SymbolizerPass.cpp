#include "llvm/Support/CommandLine.h"
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
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/InlineAsm.h"
#include <fstream>
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
#include <nlohmann/json.hpp>
#include <filesystem>

using namespace llvm;

using json = nlohmann::json;

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

		//TODO : @gabe Delete this logic
		std::vector<StructType*> visited_struct_types;
		json ParsedJson;

		void create_function(Module& M, Type* return_type, Function* function) {
			LLVMContext& ctx = M.getContext();
			BasicBlock *functionBB = BasicBlock::Create(ctx, "EntryBB", function);
			IRBuilder<> builder(functionBB);
			if (return_type->isVoidTy()) {
				builder.CreateRetVoid();
			} else if (return_type->isIntegerTy()) {
				Value *retVal = ConstantInt::get(return_type, 0);
				builder.CreateRet(retVal);
			} else if (return_type->isFloatingPointTy()) {
				Value *retVal = ConstantFP::get(return_type, 0.0);
				builder.CreateRet(retVal);
			} else if (return_type->isPointerTy()) {
				Value *retVal = ConstantPointerNull::get(cast<PointerType>(return_type));
				builder.CreateRet(retVal);
			}
		}

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

		void mark_symbolic(Module& M, Value* value, IRBuilder<>& Builder) {
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
			// If it is a pointer to a function, do nothing
			if (isa<FunctionType>(ptr_type->getPointerElementType())) {
				return;
			}
			// If it is, then allocate something and store it
			Value* stack_object = create_object_and_mark_symbolic(M, Builder, ptr_type->getPointerElementType(), name, ptr_type->getPointerElementType(), false, false);
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

		Value* create_object_and_mark_symbolic(Module& M, IRBuilder<>& Builder, Type* type, StringRef name, Type* originType, bool needCast, bool needIgnore){
			LLVMContext& ctx = M.getContext();
			// special handling for i8* which could be strings
			bool cast_to_integer = false;
			Type* originalType = type;
			if (IntegerType* integer_type = dyn_cast<IntegerType>(type)) {
					type = ArrayType::get(integer_type, 100);
					cast_to_integer = true;
			}
			if (isa<FunctionType>(type)) {
				FunctionType *functionType = cast<FunctionType>(type);
				Function *function = Function::Create(functionType, Function::ExternalLinkage, "myFunction", M);
				create_function(M, functionType->getReturnType(), function);
				return function;
			} else {
				// If it is a struct type but the definition isn't present, then we just give it some random fields
				// create an integer and mark it symbolic
				// This implementation is incomplete: many corner cases need to be handled
				AllocaInst* stack_arg = nullptr;
				StructType* struct_symbol_type = dyn_cast<StructType>(type);
				if (struct_symbol_type && struct_symbol_type->isOpaque()) {
					// Create a dummy struct type of two ints
					struct_symbol_type->setBody({llvm::Type::getInt8Ty(ctx), llvm::Type::getInt8Ty(ctx)});
				} 
				stack_arg = Builder.CreateAlloca(type, 0, name);
				// Any inner objects, should also be initialized
				initialize_inner_objects(M, Builder, stack_arg);
				// Only mark the non-pointers symbolic
				// For structs, only mark the non-pointer fields symbolic
				if (!isa<PointerType>(type) && !needIgnore) {
					// type is the type passed to the CreateAlloca
					// For structs too, we can mark the whole struct
					// as symbolic
					mark_symbolic(M, stack_arg, Builder);
				}
				if (cast_to_integer) {
					IntegerType* integer_type = dyn_cast<IntegerType>(originalType);
					Type* void_ptr_type;
					if (integer_type->getBitWidth() == 8) {
						void_ptr_type = PointerType::get(IntegerType::getInt8Ty(ctx), 0);
					} else if (integer_type->getBitWidth() == 16) {
						void_ptr_type = PointerType::get(IntegerType::getInt16Ty(ctx), 0);
					} else if (integer_type->getBitWidth() == 32) {
						void_ptr_type = PointerType::get(IntegerType::getInt32Ty(ctx), 0);
					} else if (integer_type->getBitWidth() == 64) {
						void_ptr_type = PointerType::get(IntegerType::getInt64Ty(ctx), 0);
					} else {
						//error
					}
					return (Builder.CreateBitCast(stack_arg, void_ptr_type));
				} else if (needCast) {
					// need cast back to origninal type
					return (Builder.CreateBitCast(stack_arg, originType));
				} else {
					return stack_arg;
				}
			}
		}

		void symbolize_function_args_and_invoke(Module& M) {
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

			if (!target_function) {
    			llvm::errs() << "Error: target function not found.\n";
    			return; 
			}

			std::string fixedJsonPath = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/input.json";
			if (std::filesystem::exists(fixedJsonPath)) {
				std::ifstream jsonFile(fixedJsonPath);
				if (!jsonFile.is_open()) {
					llvm::errs() << "Error: Could not open JSON file: " << fixedJsonPath << "\n";
				}
				json jsonData;
				jsonFile >> jsonData;
				if (jsonData.contains(target_function->getName())) {
					ParsedJson = jsonData[target_function->getName()];
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
				// If it's a C pointer type, then we must create a stack object (AllocaInst) of the base type, mark it symbolic, and pass it directly to the function
				// If it's a scalar, then we must create a stack object, load it and pass it to the function
				Value* stackArg = nullptr;
				unsigned argIndex = arg.getArgNo();
				bool needReplace = false;
				bool needIgnore = false;
				std::string targetName;

				if (!ParsedJson.empty() && ParsedJson.contains(std::to_string(argIndex))) {
					targetName = ParsedJson[std::to_string(argIndex)];;
				}
				if (!targetName.empty()) {
					if (targetName == "function") {
						needIgnore = true;
					} else {
						needReplace = true;
					}
				}

				Type* targetType = arg.getType();
				Type* originalType = targetType;
				if (needReplace) {
					Type* structType = StructType::getTypeByName(M.getContext(), targetName);
					//If the defination of the struct is empty
					if (!structType) {
						structType = StructType::create(M.getContext(), targetName);
					}
					targetType = PointerType::get(structType, 0);
				}
			
				if (isa<PointerType>(targetType) && targetType->getPointerElementType()) {
					if (isa<FunctionType>(targetType->getPointerElementType())) {
						FunctionType *functionType = cast<FunctionType>(targetType->getPointerElementType());
						Function *function = Function::Create(functionType, Function::ExternalLinkage, "myFunction", M);
						create_function(M, functionType->getReturnType(), function);
						actual_args.push_back(function);
					} else {
						stackArg = create_object_and_mark_symbolic(M, Builder,targetType->getPointerElementType(), arg.getName(), originalType, needReplace, needIgnore);
						actual_args.push_back(stackArg);
					}
				} else {
					stackArg = create_object_and_mark_symbolic(M, Builder,targetType, arg.getName(), originalType, needReplace, needIgnore);
					LoadInst* stack_load_inst = Builder.CreateLoad(stackArg->getType()->getPointerElementType(), stackArg);
					actual_args.push_back(stack_load_inst);
				}
			}

			// Now we pass these arguments to the actual function
			CallInst* call_with_symb_args = Builder.CreateCall(target_function, actual_args);

			// Then we dump the symbolic values
			for (int i = 0; i < actual_args.size(); i++) {
				Value* arg_value = actual_args[i];
				if (llvm::isa<llvm::Function>(arg_value)) {
					continue;
				}
                bool needReplace = false;
				bool needIgnore = false;
				std::string targetName;

                if (!ParsedJson.empty() && ParsedJson.contains(std::to_string(i))) {
                    targetName = ParsedJson[std::to_string(i)];;
                }
				if (!targetName.empty()) {
					if (targetName == "function") {
						needIgnore = true;
					} else {
						needReplace = true;
					}
				}


                Type* targetType = arg_value->getType();
                if (needReplace) {
					Type* structType = StructType::getTypeByName(M.getContext(), targetName);
					targetType = PointerType::get(structType, 0);
                }
				if (needIgnore) {
					continue;
				}

				if (needReplace) {
					print_nested_klee_exprs(M, Builder, Builder.CreateBitCast(arg_value, targetType), std::string("arg_value_") + std::to_string(i));
				} else {
					print_nested_klee_exprs(M, Builder, arg_value, std::string("arg_value_") + std::to_string(i));
				}
			}

			// The return value
			if (!call_with_symb_args->getType()->isVoidTy()) {
				print_nested_klee_exprs(M, Builder, call_with_symb_args, std::string("ret_value"));
			}

			Builder.CreateRetVoid();
		}

		void print_nested_klee_exprs(Module& M, IRBuilder<>& Builder, Value* arg_value, std::string label) {
			LLVMContext& ctx = M.getContext();
			// Now we add the calls to the klee_print_expr functions
			Function* klee_print_expr_function = M.getFunction("klee_print_expr");

			// If it's not a pointer (not an LLVM pointer, basically a loadInst)
			// then just pass it directly
			// and return.

			if (StructType* struct_type = dyn_cast<StructType>(arg_value->getType())) {
					for (unsigned int i = 0; i < struct_type->getNumElements(); i++) {
						Type* field_type = struct_type->getElementType(i);
						Value *gep = Builder.CreateExtractValue(arg_value, {i});
						if (isa<PointerType>(field_type) || isa<StructType>(field_type) || isa<ArrayType>(field_type)) {
							print_nested_klee_exprs(M, Builder, gep, label + "." + "field_" + std::to_string(i));
						} else {
							std::vector<Value*> args_vec;
							
							std::string new_label = label + "." + "field_" + std::to_string(i);
							std::string label_name = std::string("*(" + new_label + ")");

							args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label_name + " : "));
							args_vec.push_back(gep);
							Builder.CreateCall(klee_print_expr_function, args_vec);
						}
					}
					return;
			}
			
			if (!isa<PointerType>(arg_value->getType())) {
				std::vector<Value*> args_vec;
				args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label + " : "));
				args_vec.push_back(arg_value);
				Builder.CreateCall(klee_print_expr_function, args_vec);
				return;
			}

			// If it is a pointer type, we have to be a little careful
			while (isa<PointerType>(arg_value->getType()) && isa<PointerType>(arg_value->getType()->getPointerElementType())) {
				label = "*(" + label + ")";
				// Create a load
				arg_value = Builder.CreateLoad(arg_value->getType()->getPointerElementType(), arg_value);
			}

			if (isa<FunctionType>(arg_value->getType()->getPointerElementType())) {
				return;
			}

			if (StructType* struct_type = dyn_cast<StructType>(arg_value->getType()->getPointerElementType())) {
				for (unsigned int i = 0; i < struct_type->getNumElements(); i++) {
					Type* field_type = struct_type->getElementType(i);
					Value* gep = Builder.CreateStructGEP(
							struct_type, 
							arg_value, 
							i,
							"gep");
					if (isa<PointerType>(field_type) || isa<StructType>(field_type) || isa<ArrayType>(field_type)) {
						// todo @ gab : fix me !!
						// temporary solution for i64 * inside struct (In rust, it is a function pointer)
						if (auto *ptrType = dyn_cast<PointerType>(field_type)) {
							Type *pointeeType = ptrType->getElementType();
							if (pointeeType->isIntegerTy(64)) {
								continue;
							}
						}
						print_nested_klee_exprs(M, Builder, gep, label + "." + "field_" + std::to_string(i));
					} else {
						
						// Create a load
						Value* load_arg_value = Builder.CreateLoad(gep->getType()->getPointerElementType(), gep);


						std::vector<Value*> args_vec;
						
						std::string new_label = label + "." + "field_" + std::to_string(i);
						std::string label_name = std::string("*(" + new_label + ")");

						args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label_name + " : "));
						args_vec.push_back(load_arg_value);
						Builder.CreateCall(klee_print_expr_function, args_vec);
					}
				}
			} else if (ArrayType* array_type = dyn_cast<ArrayType>(arg_value->getType()->getPointerElementType())) {
				Type* element_type = array_type->getElementType();
				for (unsigned int i = 0; i < array_type->getNumElements(); i++) {
					Value* gep = Builder.CreateGEP(
							array_type, 
							arg_value, 
							ArrayRef<Value*>({ConstantInt::get(IntegerType::get(ctx, 64), 0), ConstantInt::get(IntegerType::get(ctx, 64), i)}),
							"gep");
					if (isa<PointerType>(element_type) || isa<StructType>(element_type) || isa<ArrayType>(element_type)) {
						print_nested_klee_exprs(M, Builder, gep, label + "[" + std::to_string(i) + "]");
					} else {

						// Create a load
						Value* load_arg_value = Builder.CreateLoad(gep->getType()->getPointerElementType(), gep);

						std::string label_name = std::string("*(" + label + ")");

						std::vector<Value*> args_vec;
						args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label_name +  " : "));
						args_vec.push_back(load_arg_value);
						Builder.CreateCall(klee_print_expr_function, args_vec);
					}
				}
			} else if (arg_value->getType()->isPointerTy()) {
				Value *isNotNull = Builder.CreateICmpNE(arg_value, Constant::getNullValue(arg_value->getType()), "is_not_null");

				// Create a basic block for the loop and after-loop continuation
				BasicBlock *loopBlock = BasicBlock::Create(Builder.getContext(), "loop", Builder.GetInsertBlock()->getParent());
				BasicBlock *afterBlock = BasicBlock::Create(Builder.getContext(), "after_loop", Builder.GetInsertBlock()->getParent());
				BasicBlock *nullBlock = BasicBlock::Create(Builder.getContext(), "null_block", Builder.GetInsertBlock()->getParent());

				Builder.CreateCondBr(isNotNull, loopBlock, nullBlock);
				
				Builder.SetInsertPoint(loopBlock);

				Type *elementType = arg_value->getType()->getPointerElementType();
				for (int i = 0; i < 1; ++i) {
					// Create the GEP for the current index
					Value *index = Builder.getInt32(i);
					Value *ptr = Builder.CreateGEP(elementType, arg_value, index, "gep" + std::to_string(i));

					// Load the value from the pointer
					Value *charVal = Builder.CreateLoad(elementType, ptr, "load" + std::to_string(i));

					// Prepare arguments for the print function
					std::vector<Value*> args_vec;
					args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label + " : "));
					args_vec.push_back(charVal);

					// Call the print function
					Builder.CreateCall(klee_print_expr_function, args_vec);
				}
				Builder.CreateBr(afterBlock);
				Builder.SetInsertPoint(nullBlock);
				{
					std::vector<Value*> args_vec;
					args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label + " : "));
					args_vec.push_back(Builder.getInt64(0));

					Builder.CreateCall(klee_print_expr_function, args_vec);
				}
				Builder.CreateBr(afterBlock);
				Builder.SetInsertPoint(afterBlock);
			} else {
				std::vector<Value*> args_vec;
				args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label + " : "));
				args_vec.push_back(arg_value);
				Builder.CreateCall(klee_print_expr_function, args_vec);
			}
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

			SmallVector<Type*, 5> types2;
			types2.push_back(char_ptr_type);
			ArrayRef<Type*> argTypes2(types2);

			FunctionType* klee_print_expr_type = FunctionType::get(FunctionType::getVoidTy(ctx), argTypes2, true); 
			Function::Create(klee_print_expr_type, Function::ExternalLinkage, "klee_print_expr", M);
		}

		void convert_function_calls(Module& M) {
			LLVMContext &ctx = M.getContext();
			IRBuilder<> Builder(ctx);

			// Iterate through all functions in the module
			for (Function &F : M) {
				if (F.isDeclaration())
					continue; // Skip function declarations

				if (F.getName() == "main" || F.getName().startswith("symbolic_dummy")) 
					continue; // The main is the driver and symbolic_dummy's are the ones we inserted

				std::vector<CallBase *> call_insts;

				// Collect all CallInsts in the function
				for (BasicBlock &basic_block : F) {
					for (Instruction &instruction : basic_block) {
						if (auto *call_inst = dyn_cast<CallBase>(&instruction)) {
							if (call_inst->getCalledFunction() && call_inst->getCalledFunction()->isIntrinsic()) { 
								// intrinsics are functions that are provided by the compiler
								// No need to replace them as their definitions will always
								// be provided by the compiler
								// Debug information, along with certain memcpy, memchk functions
								// are treated as intrinsics in LLVM.
								// The arguments to a debug intrinsic cannot be passed to a normal
								// function (which is what would happen if we tried to create dummy
								// versions of intrinsic functions.
								// Also, if we replaced the debug intrinsics, debug information would
								// stop working.
								continue;
							}
							if (call_inst->getCalledFunction() && (call_inst->getCalledFunction()->getName() == "strcpy" || call_inst->getCalledFunction()->getName() == "__strcpy_chk")) {
								continue;
							}
							if (call_inst->getCalledFunction()) {
								outs() << "replace call: " << call_inst->getCalledFunction()->getName() << "\n";
							}
							call_insts.push_back(call_inst);
						}
					}
				}
				
				int count = 0;
				// Transform each CallInst
				for (CallBase *call_inst : call_insts) {
					FunctionType *func_type = call_inst->getFunctionType();
					std::vector<Type *> param_types(func_type->param_begin(), func_type->param_end());

					// Create a new function with the same signature
					Function *dummy_func = Function::Create(
						func_type, Function::ExternalLinkage,
						"symbolic_dummy" + std::to_string(count++), M);

					// Create the function body
					BasicBlock *basic_block = BasicBlock::Create(ctx, "entry", dummy_func);
					Builder.SetInsertPoint(basic_block);

					Type *return_type = func_type->getReturnType();
					if (return_type->isVoidTy()) {
						Builder.CreateRetVoid();
					} else {
						// Create a global variable for the return value
						GlobalVariable *symbolic_ret_val = new GlobalVariable(
							M, return_type, false, GlobalValue::PrivateLinkage,
							Constant::getNullValue(return_type), "symbolic_ret");

						// Call klee_make_symbolic
						Function *klee_make_symbolic = M.getFunction("klee_make_symbolic");
						assert(klee_make_symbolic && "Can't find klee_make_symbolic function!");

						Builder.CreateCall(
							klee_make_symbolic,
							{Builder.CreateBitCast(symbolic_ret_val, Type::getInt8PtrTy(ctx)),
							ConstantInt::get(Type::getInt64Ty(ctx), M.getDataLayout().getTypeAllocSize(return_type)),
							Builder.CreateGlobalStringPtr("symbolic_var")});

						// Return the global variable
						Builder.CreateRet(Builder.CreateLoad(return_type, symbolic_ret_val));
					}

					// Handle CallInst
					if (auto *call_instruction = dyn_cast<CallInst>(call_inst)) {
						SmallVector<Value *, 8> args;
						for (auto &arg : call_instruction->args()) {
							args.push_back(arg.get());
						}
						IRBuilder<> CallBuilder(call_instruction);
						call_instruction->replaceAllUsesWith(CallBuilder.CreateCall(dummy_func, args));
						call_instruction->eraseFromParent();
					} else if (auto *invoke_instruction = dyn_cast<InvokeInst>(call_inst)) {
						SmallVector<Value *, 8> args;
						for (auto &arg : invoke_instruction->args()) {
							args.push_back(arg.get());
						}
						IRBuilder<> InvokeBuilder(invoke_instruction);
						InvokeInst *new_invoke = InvokeBuilder.CreateInvoke(
							dummy_func, invoke_instruction->getNormalDest(),
							invoke_instruction->getUnwindDest(), args);
						invoke_instruction->replaceAllUsesWith(new_invoke);
						invoke_instruction->eraseFromParent();
					}
				}
			}
		}

		PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
			create_klee_function_decls(M);
			remove_unneeded_functions(M);
			symbolize_function_args_and_invoke(M);
			convert_function_calls(M);
			//M.dump();
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
