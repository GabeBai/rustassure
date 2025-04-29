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

bool startsWith(const std::string& str, const std::string& prefix) {
	return str.compare(0, prefix.size(), prefix) == 0;
}

int editDistance(const std::string &s1, const std::string &s2) {
    const size_t len1 = s1.size(), len2 = s2.size();
    std::vector<std::vector<int>> dp(len1 + 1, std::vector<int>(len2 + 1));
    for (size_t i = 0; i <= len1; i++) {
        dp[i][0] = i;
    }
    for (size_t j = 0; j <= len2; j++) {
        dp[0][j] = j;
    }
    for (size_t i = 1; i <= len1; i++) {
        for (size_t j = 1; j <= len2; j++) {
            dp[i][j] = std::min({ dp[i - 1][j] + 1,
                                  dp[i][j - 1] + 1,
                                  dp[i - 1][j - 1] + (s1[i - 1] == s2[j - 1] ? 0 : 1) });
        }
    }
    return dp[len1][len2];
}

Type* getLLVMType(LLVMContext &context, const std::string &typeStr) {
	if (typeStr == "core::ffi::c_str::CStr") {
		ArrayType *arrTy = ArrayType::get(Type::getInt8Ty(context), 100);
		StructType *myStructTy = StructType::create(context, "CStr_struct");
		myStructTy->setBody(arrTy);
		return PointerType::get(myStructTy, 0);;
	}
	if (typeStr == "BmpImg") {
		Type *field_type_0 = StructType::getTypeByName(context, "BmpHeader");
		Type *field_type_1 = PointerType::get(PointerType::get(StructType::getTypeByName(context, "BmpPixel"), 0), 0);
		StructType *myStructTy = StructType::create(context, "BmpPixel_struct");
		std::vector<Type*> fields = {field_type_0, field_type_1};
		myStructTy->setBody(fields);
		return PointerType::get(myStructTy, 0);
	}

	if (StructType::getTypeByName(context, typeStr)) {
		return PointerType::get(StructType::getTypeByName(context, typeStr), 0);
	}

	if (typeStr == "Integer_8") {
		return Type::getInt8PtrTy(context);  // i8*
	} else if (typeStr == "Integer_32") {
		return Type::getInt32PtrTy(context); // i32*
	}

	return PointerType::get(StructType::create(context, typeStr), 0);
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

bool isFieldUnused(StructType *structType, int fieldIndex, Module &module) {
	for (auto &func : module) {
		if (func.getName() == "main") {
			continue;
		}
		for (auto &bb : func) {
			for (auto &inst : bb) {
				if (auto *gep = dyn_cast<GetElementPtrInst>(&inst)) {
					if (gep->getSourceElementType() == structType) {
						if (gep->getNumOperands() > 2) {
							if (auto *constIndex = dyn_cast<ConstantInt>(gep->getOperand(2))) {
								if (constIndex->getZExtValue() == fieldIndex) {
									// llvm::errs() << inst << "\n";
									return false;
								}
							}
						}
					}
				}
			}
		}
	}
	if (fieldIndex == 0) {
		for (auto &func : module) {
			if (func.getName() == "main") {
				continue;
			}
			for (auto &bb : func) {
				for (auto &inst : bb) {
					if (auto *bitCastInst = dyn_cast<BitCastInst>(&inst)) {
						if (bitCastInst->getOperand(0)->getType() == structType->getPointerTo()) {
							if (fieldIndex < structType->getNumElements()) {
								Type *fieldType = structType->getElementType(fieldIndex);
								if (bitCastInst->getType() == fieldType->getPointerTo()) {
									llvm::errs() << inst << "\n";
									return false;
								}
							}
						}
					}
				}
			}
		}
	}
	std::string filename = module.getModuleIdentifier();
	std::filesystem::path filepath(filename);
	std::string filename_without_extension = splitString(filepath.stem().string(), ".")[0];
	if (structType->getName() == "core::ffi::c_str::CStr" && fieldIndex == 0) {
		return false;
	}
	if (structType->getName().find("CStr_struct") == 0) {
		return false;
	}
	if (structType->getName().find("BmpPixel_struct") == 0) {
		return false;
	}

	if (structType->getName() == "url_key_value" && filename_without_extension == "url_free") {
		return true;
	} 
	return true;
}

std::set<std::string> tokenizeByUnderscore(const std::string& str) {
	std::set<std::string> result;
	std::stringstream ss(str);
	std::string token;

	std::string lowerStr;
	lowerStr.reserve(str.size());
	std::transform(str.begin(), str.end(), std::back_inserter(lowerStr),
				   [](unsigned char c) { return static_cast<char>(std::tolower(c)); });

	for (char& c : lowerStr) {
		if (c == '_') {
			c = ' ';
		}
	}
	ss.str(lowerStr);
	while (ss >> token) {
		result.insert(token);
	}
	return result;
}


bool compareStrings(const std::string& filenameWithoutExt, const std::string& functionName) {

	auto normalize = [](const std::string& s) {
		std::string result;
		result.reserve(s.size());
		for (char c : s) {
			if (c != '_') {
				result.push_back(static_cast<char>(std::tolower(static_cast<unsigned char>(c))));
			}
		}
		return result;
	};

	std::string normStr1 = normalize(filenameWithoutExt);
	std::string normStr2 = normalize(functionName);

	if (normStr1 == normStr2) {
		return true;
	}

	std::set<std::string> fileTokens = tokenizeByUnderscore(filenameWithoutExt);

	std::set<std::string> funcTokens = tokenizeByUnderscore(functionName);

	for (const auto& token : funcTokens) {
		if (fileTokens.find(token) == fileTokens.end()) {
			return false;
		}
	}

	return true;
}

// Function to execute rustfilt and capture the output
std::string exec_rustfilt(const std::string& mangled) {
	// Build the shell command
	// Using single quotes around 'mangled' to help protect special chars.
	// If you expect user input (and want to avoid shell injection),
	// additional sanitization/escaping is strongly advised.
	std::string command = "echo '" + mangled + "' | rustfilt";

	// Prepare a buffer and a string to capture output
	std::array<char, 128> buffer{};
	std::string result;

	// Use a unique_ptr to ensure the pipe is closed automatically
	std::unique_ptr<FILE, decltype(&pclose)> pipe(popen(command.c_str(), "r"), pclose);

	// Read the output line by line into result
	while (fgets(buffer.data(), static_cast<int>(buffer.size()), pipe.get()) != nullptr) {
		result += buffer.data();
	}

	// Strip trailing newline if present
	if (!result.empty() && result.back() == '\n') {
		result.pop_back();
	}

	return result;
}


/**
 * Run as
 * opt -load-pass-plugin ./build/Pass/SymbolizerPass.so tests/test.ll -O0  -o o.ll
 */

namespace {


	struct Symbolizer : PassInfoMixin<Symbolizer> {
		json ParsedJson;
		Function *malloc_function;
		std::map<int, std::string> argumentsMap;
		std::unordered_set<StructType*> visited_structs;
		std::list<std::string> keep_list = {
			"strcpy",
			"__strcpy_chk",
			"malloc",
			"strlen",
			"memcmp"
		};
		std::list<std::string> skip_symbolized_struct = {
			"alloc::string::String",
		};
		GlobalVariable *gCallCounter;

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
			Function* main_function = M.getFunction("main");
			if (main_function) {
				main_function->eraseFromParent();
			}
		}

		void mark_symbolic(Module& M, Type *type, Value* value, IRBuilder<>& Builder, std::string &argument_name, Type *rootType) {
			std::string struct_name = "";
			if (PointerType *pointer_type = dyn_cast<PointerType>(value->getType())) {
				if (PointerType *inner_pointer_type = dyn_cast<PointerType>(pointer_type->getPointerElementType())) {
					if (StructType *struct_type = dyn_cast<StructType>(inner_pointer_type->getPointerElementType())) {
						struct_name = struct_type->getName().str();
					}
				} else if (StructType *struct_type = dyn_cast<StructType>(pointer_type->getPointerElementType())) {
					struct_name = struct_type->getName().str();
				}
			}
			if (isa<PointerType>(type)) {
				// if (!(isa<PointerType>(rootType) && isa<PointerType>(rootType->getPointerElementType()))) {
				// 	argument_name = argument_name + "_pointer";
				// }
				argument_name = argument_name + "_pointer";
			}
			auto it = std::find(skip_symbolized_struct.begin(), skip_symbolized_struct.end(), struct_name);
			if (it != skip_symbolized_struct.end()) {
				return;
			}

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
			llvm::StringRef ref(argument_name);
			Value* arg_name = Builder.CreateGlobalString(ref, "klee_sym_arg_name", 0, &M);
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

		void initialize_inner_struct(Module& M,
			IRBuilder<>& Builder,
			Value* pointer,
			Type* type,
			StringRef name,
			std::string &argument_name,
			Type *rootType) {
			Value* stack_object = create_object_and_mark_symbolic(M, Builder, type, name, type, false, false, argument_name, rootType);
			if (pointer->getType() != stack_object->getType()) {
				stack_object = Builder.CreateBitCast(stack_object, pointer->getType());
			}
			Value* stack_load_inst = Builder.CreateLoad(stack_object->getType()->getPointerElementType(), stack_object);
			Builder.CreateStore(stack_load_inst, pointer);
		}
			
		void initialize_inner_pointer(Module& M, IRBuilder<>& Builder, Value* pointer, PointerType* ptr_type, StringRef name, std::string &argument_name, Type *rootType) {
			// If it is a pointer to a function, do nothing
			if (isa<FunctionType>(ptr_type->getPointerElementType())) {
				return;
			}
			// If it is, then allocate something and store it
			Value* stack_object = create_object_and_mark_symbolic(M, Builder, ptr_type->getPointerElementType(), name, ptr_type, false, false, argument_name, rootType);
			// Store it to the pointer
			if (pointer->getType()->getPointerElementType() != stack_object->getType()) {
				stack_object = Builder.CreateBitCast(stack_object, pointer->getType()->getPointerElementType());
			}
			Builder.CreateStore(stack_object, pointer);
		}

		void initialize_inner_objects(Module& M,
			IRBuilder<>& Builder,
			Value* stack_var,
			std::string &argument_name,
			Type *rootType) {
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
					initialize_inner_pointer(M, Builder, pointer, ptr_type, StringRef("ptr"), argument_name, rootType);
				}
				if (StructType* struct_type = dyn_cast<StructType>(pointer->getType()->getPointerElementType())) { // these are stack variables
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
							if (StructType *inner_struct_type = dyn_cast<StructType>(field_ptr_type->getPointerElementType())) {
								if (visited_structs.count(struct_type)) {
									return;
								}
								visited_structs.insert(struct_type);
							}
							std::string update_argument_name = argument_name + "field_" + std::to_string(i);
							initialize_inner_pointer(M, Builder, gep, field_ptr_type, "field", update_argument_name, rootType);
							visited_structs.emplace(struct_type);
						} else if (StructType* inner_struct_type = dyn_cast<StructType>(field_type)) {
							Value* gep = Builder.CreateStructGEP(
								struct_type, 
								pointer, 
								i,
							"gep");
							std::string update_argument_name = argument_name + "field_" + std::to_string(i);
							initialize_inner_struct(M, Builder, gep, inner_struct_type, "field", update_argument_name, rootType);
						}
					}
				}
			}
		}

		Value* create_object_and_mark_symbolic(Module& M,
			IRBuilder<>& Builder,
			Type* type, StringRef name,
			Type* originType,
			bool needCast,
			bool needIgnore,
			std::string &argument_name,
			Type* rootType){
			LLVMContext& ctx = M.getContext();
			// special handling for i8* which could be strings
			bool cast_to_integer = false;
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

				//special handle array when its size is 0
				if (auto *arrayTy = llvm::dyn_cast<llvm::ArrayType>(type)) {
					Type *elementTy = arrayTy->getElementType();
					if (arrayTy->getNumElements() == 0) {
						type = ArrayType::get(elementTy, 100);
						needCast = true;
					}
				}
				stack_arg = Builder.CreateAlloca(type, 0, name);
				// Any inner objects, should also be initialized
				initialize_inner_objects(M, Builder, stack_arg, argument_name, rootType);
				// Only mark the non-pointers symbolic
				// For structs, only mark the non-pointer fields symbolic
				if (isa<PointerType>(type)) {
					needIgnore = true;
				}
				if (!needIgnore) {
					// type is the type passed to the CreateAlloca
					// For structs too, we can mark the whole struct
					// as symbolic
					mark_symbolic(M, type, stack_arg, Builder, argument_name, rootType);
				}
				if (needCast) {
					return Builder.CreateBitCast(stack_arg, originType);
				} else if (cast_to_integer) {
					IntegerType* integer_type = dyn_cast<IntegerType>(originType->getPointerElementType());
					Type* void_ptr_type = PointerType::get(IntegerType::get(ctx, integer_type->getBitWidth()), 0);
					return (Builder.CreateBitCast(stack_arg, void_ptr_type));
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
			std::vector<Function*> candidate_functions;
			std::string filename = M.getModuleIdentifier();
			std::filesystem::path filepath(filename);
			std::string filename_without_extension = splitString(filepath.stem().string(), ".")[0];
			for (Function& F: M.functions()) {
				if (!F.hasName()) {
					continue;
				}
				if (!F.isDeclaration()) {
				
					std::string demangled_name = exec_rustfilt(F.getName().str());
					std::vector<std::string> result = splitString(demangled_name, "::");
					std::string function_name = result.empty() ? "" : result.back();
					if (compareStrings(filename_without_extension, function_name)) {
						candidate_functions.push_back(&F);
					}
				}
			}

			if (!candidate_functions.empty()) {
				if (candidate_functions.size() == 1) {
					target_function = candidate_functions[0];
				} else {
					int bestDistance = std::numeric_limits<int>::max();
					for (auto *func : candidate_functions) {
						std::string demangled_name = exec_rustfilt(func->getName().str());
						std::vector<std::string> result = splitString(demangled_name, "::");
						std::string func_name = result.empty() ? "" : result.back();
			
						int distance = editDistance(filename_without_extension, func_name);
						if (distance < bestDistance) {
							bestDistance = distance;
							target_function = func;
						}
					}
				}
			}

			if (!target_function) {
    			llvm::errs() << "Error: target function not found.\n";
    			return; 
			}

			std::string fixedJsonPath = "input.json";
			if (std::filesystem::exists(fixedJsonPath)) {
				llvm::errs() << "json founded " << fixedJsonPath << "\n";
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
			bool has_struct_ret = false;
			for (Argument& arg: target_function->args()) {
				// If it's a C pointer type, then we must create a stack object (AllocaInst) of the base type, mark it symbolic, and pass it directly to the function
				// If it's a scalar, then we must create a stack object, load it and pass it to the function
				unsigned pos = arg.getArgNo();
				std::string argument_name;
				if (arg.hasAttribute(Attribute::StructRet)) {
					argumentsMap[arg.getArgNo()] = "Ret";
					argument_name = "return_value";
					has_struct_ret = true;
				} else {
					if (has_struct_ret) {
						argument_name = "input_argument_" + std::to_string(pos - 1);
					} else {
						argument_name = "input_argument_" + std::to_string(pos);
					}
				}
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
				Type* originalType = PointerType::get(targetType, 0);
				if (needReplace) {
					targetType = getLLVMType(ctx, targetName);
				}

				if (isa<PointerType>(targetType) && isa<FunctionType>(targetType->getPointerElementType())) {
					FunctionType *functionType = cast<FunctionType>(targetType->getPointerElementType());
					Function *function = Function::Create(functionType, Function::ExternalLinkage, "myFunction", M);
					create_function(M, functionType->getReturnType(), function);
					actual_args.push_back(function);
				} else {
					stackArg = create_object_and_mark_symbolic(M,
						Builder,
						targetType,
						arg.getName(),
						originalType,
						needReplace,
						needIgnore,
						argument_name,
						targetType);
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
                	targetType = getLLVMType(ctx, targetName);
                }
				if (needIgnore) {
					continue;
				}
				std::string prefix = "arg_value_";
				if (argumentsMap.find(i) != argumentsMap.end() && argumentsMap[i] == "Ret") {
					prefix = "ret_value";
				}
				
				int index = i;
				for (const auto& [key, value] : argumentsMap) {
					if (key < i && value == "Ret") {
						index--;
					}
				}

				Value *target_value = arg_value;
				if (needReplace) {
					target_value = Builder.CreateBitCast(arg_value, targetType);
				}


				print_nested_klee_exprs(M, Builder, target_value, prefix + std::to_string(index));
			}

			// The return value
			if (!call_with_symb_args->getType()->isVoidTy()) {
				std::string targetName;
				if (!ParsedJson.empty() && ParsedJson.contains("ret_value")) {
					targetName = ParsedJson["ret_value"];
					Type* targetType = getLLVMType(ctx, targetName);
					print_nested_klee_exprs(M, Builder, Builder.CreateBitCast(call_with_symb_args, targetType), std::string("ret_value"));
				} else {
					print_nested_klee_exprs(M, Builder, call_with_symb_args, std::string("ret_value"));
				}
			}

			Value *free_count = Builder.CreateLoad(Type::getInt32Ty(ctx), gCallCounter, "oldVal");
			std::vector<Value*> args_vec;

			std::string new_label = "free_call_counts";

			args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + new_label + " : "));
			args_vec.push_back(free_count);
			Function* klee_print_expr_function = M.getFunction("klee_print_expr");
			Builder.CreateCall(klee_print_expr_function, args_vec);


			Builder.CreateRetVoid();
		}

		void print_nested_klee_exprs(Module& M, IRBuilder<>& Builder, Value* arg_value, std::string label) {
			LLVMContext& ctx = M.getContext();
			// Now we add the calls to the klee_print_expr functions
			Function* klee_print_expr_function = M.getFunction("klee_print_expr");

			// If it's not a pointer (not an LLVM pointer, basically a loadInst)
			// then just pass it directly
			// and return.

			//special handle array when its size is 0
			if (auto *pointer_type = dyn_cast<PointerType>(arg_value->getType())) {
				Type *element_type = pointer_type->getPointerElementType();
				if (auto *arrTy = dyn_cast<ArrayType>(element_type)) {
					Type *arrElmTy = arrTy->getElementType();
					if (arrTy->getNumElements() == 0) {
						Type *integer_type = PointerType::get(arrElmTy, 0);
						arg_value = Builder.CreateBitCast(arg_value, integer_type, "cast_size");
					}
				}
			}

			if (StructType* struct_type = dyn_cast<StructType>(arg_value->getType())) {
					for (unsigned int i = 0; i < struct_type->getNumElements(); i++) {
						Type* field_type = struct_type->getElementType(i);
						Value *gep = Builder.CreateExtractValue(arg_value, {i});
						if (isa<PointerType>(field_type) || isa<StructType>(field_type) || isa<ArrayType>(field_type)) {
							print_nested_klee_exprs(M, Builder, gep, label + "." + "field_" + std::to_string(i));
						} else {
							std::vector<Value*> args_vec;
							std::string new_label = label + "." + "field_" + std::to_string(i);
							args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + new_label + " : "));
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
					bool need_cast = false;
					// 100 is a magic number, we use it to represent a field in the struct
					if (!ParsedJson.empty() && ParsedJson.contains(std::to_string(i + 100))) {
						std::string target_string = ParsedJson[std::to_string(i + 100)];
						if (target_string == "function") {
							continue;
						}
						Type *target_type = getLLVMType(ctx, target_string);
						field_type = PointerType::get(target_type, 0);
						need_cast = true;
					}
					if (!startsWith(label, "ret_value") && isFieldUnused(struct_type, i, M)) {
						std::string new_label = label + "." + "field_" + std::to_string(i);
						outs() << "Arguments have not been used: " << new_label << "\n";
						continue;
					}
					Value* gep = Builder.CreateStructGEP(
							struct_type, 
							arg_value, 
							i,
							"gep");
					if (isa<PointerType>(field_type) || isa<StructType>(field_type) || isa<ArrayType>(field_type)) {
						// todo fix me !!
						// temporary solution for i64 * inside struct (In rust, it is a function pointer)
						if (auto *ptrType = dyn_cast<PointerType>(field_type)) {
							Type *pointeeType = ptrType->getElementType();
							if (pointeeType->isIntegerTy(64)) {
								continue;
							}
						}
						if (isa<PointerType>(field_type)) {
							if (StructType *struct_type = dyn_cast<StructType>(field_type->getPointerElementType())) {
								if (visited_structs.count(struct_type)) {
									continue;
								} else {
									visited_structs.insert(struct_type);
								}
							}
						}
						if (need_cast) {
							// field_type is address of the targetType
							print_nested_klee_exprs(M, Builder, Builder.CreateBitCast(gep, field_type), label + "." + "field_" + std::to_string(i));
						} else {
							print_nested_klee_exprs(M, Builder, gep, label + "." + "field_" + std::to_string(i));
						}
						visited_structs.emplace(struct_type);
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
				//print pointer
				// std::vector<Value*> args_vec_pointer;
				// args_vec_pointer.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label + "_pointer" + " : "));
				// args_vec_pointer.push_back(arg_value);
				// Builder.CreateCall(klee_print_expr_function, args_vec_pointer);

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

		void convert_unreachable_conditions(Module &M) {
		    for (Function &F : M) {
		        if (F.isDeclaration())
		            continue;

		        Type *RetTy = F.getReturnType();
		        Constant *DefaultRetVal = nullptr;
		        if (!RetTy->isVoidTy()) {
		            DefaultRetVal = Constant::getNullValue(RetTy);
		        }
		        for (BasicBlock &BB : F) {
		            SmallVector<Instruction*, 8> Insts;
		            for (auto &I : BB) {
		                Insts.push_back(&I);
		            }
		            for (Instruction *I : Insts) {
		                if (auto *SW = dyn_cast<SwitchInst>(I)) {
		                    BasicBlock *DefaultBB = SW->getDefaultDest();
		                    if (SW->getNumCases() > 0) {
		                        if (DefaultBB->size() == 1 && isa<UnreachableInst>(DefaultBB->front())) {
		                            BasicBlock *FirstCaseBB = SW->case_begin()->getCaseSuccessor();
		                            SW->setDefaultDest(FirstCaseBB);

		                            if (!DefaultBB->hasNPredecessorsOrMore(1)) {
		                                DefaultBB->dropAllReferences();
		                                DefaultBB->eraseFromParent();
		                            }
		                        }
		                    }
		                } else if (auto *UI = dyn_cast<UnreachableInst>(I)) {
		                    BasicBlock *CurBB = UI->getParent();
		                    bool IsSwitchDefault = false;
		                    for (auto *U : CurBB->users()) {
		                        if (auto *SW = dyn_cast<SwitchInst>(U)) {
		                            if (SW->getDefaultDest() == CurBB) {
		                                IsSwitchDefault = true;
		                                break;
		                            }
		                        }
		                    }

		                    if (!IsSwitchDefault) {
		                        IRBuilder<> Builder(UI);
		                        if (RetTy->isVoidTy()) {
		                            Builder.CreateRetVoid();
		                        } else {
		                            Builder.CreateRet(DefaultRetVal);
		                        }
		                        UI->eraseFromParent();
		                    }
		                }
		            }
		        }
		    }
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
							if (call_inst->getCalledFunction()) {
								//function that doesn't have implementation
								if (call_inst->getCalledFunction()->isDeclaration()) {
									auto it = std::find(keep_list.begin(), keep_list.end(), call_inst->getCalledFunction()->getName());
									if (it != keep_list.end()) {
										continue;
									}
									call_insts.push_back(call_inst);
									outs() << "replace call: " << exec_rustfilt(call_inst->getCalledFunction()->getName().str()) << "\n";
								} else {
									// Debug Useage
									// outs() << "keep call:" << exec_rustfilt(call_inst->getCalledFunction()->getName().str()) << "\n";
								}
							} else {
								//function pointer
								Value *calledValue = call_inst->getCalledOperand();
								Type *calledType = calledValue->getType();
								if (calledType->isPointerTy()) {
									Type *pointeeType = calledType->getPointerElementType();
									if (pointeeType->isFunctionTy()) {
										call_insts.push_back(call_inst);
									}
								}
							}
						}
					}
				}
				
				int count = 0;
				// Transform each CallInst
				for (CallBase *call_inst : call_insts) {
					FunctionType *func_type = call_inst->getFunctionType();
					std::vector<Type *> param_types(func_type->param_begin(), func_type->param_end());

					bool findFreeFunction = false;
					Function *dummy_func;
					std::string filename = M.getModuleIdentifier();
					std::filesystem::path filepath(filename);
					std::string filename_without_extension = splitString(filepath.stem().string(), ".")[0];
					if (Function *called_func = call_inst->getCalledFunction()) {
						std::string function_name = exec_rustfilt(called_func->getName().str());
						if (function_name == "__rust_alloc") {
                            findFreeFunction = true;
							dummy_func = Function::Create(func_type, Function::ExternalLinkage,"function_rust_alloc" + std::to_string(count++), M);
							BasicBlock *basic_block = BasicBlock::Create(ctx, "entry", dummy_func);
							Builder.SetInsertPoint(basic_block);
							Function::arg_iterator args = dummy_func->arg_begin();
							Value *return_value = Builder.CreateCall(malloc_function, args);
                            Builder.CreateRet(return_value);
						} else if (function_name == "__rust_dealloc") {
							findFreeFunction = true;
							dummy_func = Function::Create(func_type, Function::ExternalLinkage,"function_free" + std::to_string(count++), M);
							BasicBlock *basic_block = BasicBlock::Create(ctx, "entry", dummy_func);
							Builder.SetInsertPoint(basic_block);
							Value *oldVal = Builder.CreateLoad(Type::getInt32Ty(ctx), gCallCounter, "oldVal");
							Value *incVal = Builder.CreateAdd(oldVal, ConstantInt::get(Type::getInt32Ty(ctx), 1), "incVal");
							Builder.CreateStore(incVal, gCallCounter);
							Builder.CreateRetVoid();
						} else if (function_name == "free") {
							findFreeFunction = true;
							dummy_func = Function::Create(func_type, Function::ExternalLinkage,"function_free" + std::to_string(count++), M);
							BasicBlock *basic_block = BasicBlock::Create(ctx, "entry", dummy_func);
							Builder.SetInsertPoint(basic_block);
							//do logic
							Value *oldVal = Builder.CreateLoad(Type::getInt32Ty(ctx), gCallCounter, "oldVal");
							Value *incVal = Builder.CreateAdd(oldVal, ConstantInt::get(Type::getInt32Ty(ctx), 1), "incVal");
							Builder.CreateStore(incVal, gCallCounter);
							Builder.CreateRetVoid();
						}
					}
					if (!findFreeFunction) {
						// Create a new function with the same signature
						dummy_func = Function::Create(
							func_type, Function::ExternalLinkage,
							"symbolic_dummy" + std::to_string(count++), M);

						// Create the function body
						BasicBlock *basic_block = BasicBlock::Create(ctx, "entry", dummy_func);
						Builder.SetInsertPoint(basic_block);

						Type *return_type = func_type->getReturnType();
						std::string filename = M.getModuleIdentifier();
						std::filesystem::path filepath(filename);
						std::string filename_without_extension = splitString(filepath.stem().string(), ".")[0];
						if (return_type->isVoidTy()) {
							Builder.CreateRetVoid();
						} else {
							// Create a global variable for the return value
							GlobalVariable *symbolic_ret_val = new GlobalVariable(
								M, return_type, false, GlobalValue::PrivateLinkage,
								Constant::getNullValue(return_type), "symbolic_ret");


							// Call klee_make_symbolic
							// Function *klee_make_symbolic = M.getFunction("klee_make_symbolic");
							// assert(klee_make_symbolic && "Can't find klee_make_symbolic function!");

							// Builder.CreateCall(
							// 	klee_make_symbolic,
							// 	{Builder.CreateBitCast(symbolic_ret_val, Type::getInt8PtrTy(ctx)),
							// 	ConstantInt::get(Type::getInt64Ty(ctx), M.getDataLayout().getTypeAllocSize(return_type)),
							// 	Builder.CreateGlobalStringPtr("symbolic_var")});

							// Return the global variable
							Builder.CreateRet(Builder.CreateLoad(return_type, symbolic_ret_val));
						}
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

		// todo: discuss how to process these exeternal global variable
		void convert_global_const(Module &M) {
			std::vector<std::string> Names = {"__cp_begin", "__cp_end", "__cp_cancel", "_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17hb7b9c59f381708c2E", "_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h00399aec441edfe5E",
			"_ZN3std11collections4hash3map11RandomState3new4KEYS7__getit5__KEY17h2685127cc93352fdE"};

			for (const auto &Name : Names) {
				GlobalVariable *GV = M.getGlobalVariable(Name);
				if (!GV)
					continue;
		
				if (GV->hasInitializer())
					continue;
		
				Type *Ty = GV->getValueType();
				Constant *Init = nullptr;
		
				if (Ty->isIntegerTy()) {
					Init = ConstantInt::get(Ty, 0);
				} else if (ArrayType *ArrTy = dyn_cast<ArrayType>(Ty)) {
					Type *EltTy = ArrTy->getElementType();
					if (EltTy->isIntegerTy(8)) {
						Init = ConstantAggregateZero::get(ArrTy);
					} else {
						Init = ConstantAggregateZero::get(ArrTy);
					}
				} else if (StructType *STy = dyn_cast<StructType>(Ty)) {
					Init = ConstantAggregateZero::get(STy);
				} else if (Ty->isFloatTy()) {
					Init = ConstantFP::get(Ty, 0.0);
				} else if (Ty->isDoubleTy()) {
					Init = ConstantFP::get(Ty, 0.0);
				} else {
					Init = Constant::getNullValue(Ty);
				}
		
				GV->setInitializer(Init);
				GV->setConstant(true);
				GV->setLinkage(GlobalValue::InternalLinkage);
			}
		}

		PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
			gCallCounter = new GlobalVariable(M,
				Type::getInt32Ty(M.getContext()),
				false,
				GlobalValue::ExternalLinkage,
				ConstantInt::get(Type::getInt32Ty(M.getContext()), 0),
				"free_function_call_count");
			FunctionType *func_type = FunctionType::get(PointerType::get(Type::getInt8Ty(M.getContext()), 0), IntegerType::get(M.getContext(), 64), 0);
			Function *func = Function::Create(func_type, Function::ExternalLinkage, "malloc", M);
			malloc_function = func;
			create_klee_function_decls(M);
			remove_unneeded_functions(M);
			symbolize_function_args_and_invoke(M);
			convert_function_calls(M);
			convert_global_const(M);
			// convert_unreachable_conditions(M);
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
