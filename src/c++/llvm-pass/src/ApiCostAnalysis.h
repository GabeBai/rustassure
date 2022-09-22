#include "Graphs/SVFG.h"
#include "WPA/Andersen.h"
#include "SVF-FE/PAGBuilder.h"
#include "PreProcessor.h"
#include "RustifyUtils.h"

#ifndef ApiCostAnalysis_H_
#define ApiCostAnalysis_H_

namespace Rustify
{

/**
 * This class analyzes the cost at an entire API along
 * with its accessible functions
*/

class ApiCostAnalysis
{

public:
    /// Constructor
    /// The function passed should be an external library function (API)
    /// this class will analyze this single function
    ApiCostAnalysis(llvm::Function* function_,
                    PreProcessor* preProcessor_):
                          function(function_), 
                        preProcessor(preProcessor_) {
    }

    /// Destructor
    virtual ~ApiCostAnalysis()
    {
        destroy();
    }

    void destroy(){
        // TODO
    }

    bool operator==(const ApiCostAnalysis& other) const
    {
        assert(false && "TODO implement equality");
    //    // TODO are we comparing the right things?
    //    if ( this->globalVar == nullptr && 
    //            other.globalVar != nullptr )
    //        return false;
    //    else if ( this->globalVar != nullptr && 
    //            other.globalVar == nullptr )
    //        return false;
    //    else if ( this->globalVar != nullptr &&
    //            other.globalVar != nullptr ){
    //        /// both are of global scalar variable type
    //        return this->globalVar == other.globalVar;
    //    }else {
    //        /// both are of struct-field type
    //        return this->structFieldPair.first == other.structFieldPair.first && 
    //                this->structFieldPair.second == other.structFieldPair.second;
    //    }
    //    //if ( *(this->globalVar) == *(otherConfigVariable.globalVariable) )
    //    //TODO
//  //  if (this->row == otherPos.row && this->col == otherPos.col) return true;
//  //  else return false;
        return false;
    }

    struct HashFunction
    {
        size_t operator()(const ApiCostAnalysis& funcCostAnalysis) const
        {
            size_t hashVal = 0;
            assert(false && "TODO implement hash function");
            //if ( configVariable.globalVar != nullptr ) {
            //    hashVal += std::hash<llvm::GlobalVariable*>()(
            //                        configVariable.globalVar);
            //} else {
            //    hashVal = std::hash<llvm::Type*>()((llvm::Type*)
            //                        configVariable.structFieldPair.first)
            //              ^ (std::hash<int>()(configVariable.structFieldPair.second) << 1);
            //}
            return hashVal;
        }
    };

    std::string toString(void) const;

    void extractReachableFuncs(void);

    bool hasIndCall(void) const {
        return indCallInsts.size() != 0;
    }

    void analyze(void);

    void analyzeCall(llvm::CallInst*, std::unordered_set<llvm::Function*>&);

    void analyzeArgs(void);

    void calculateScore(void);

    void findReadAndWrites(llvm::Argument*);

    llvm::Value* findInitialArgOnStack(llvm::Argument*, std::vector<llvm::Value*>&);

    llvm::Value* findArgOnStack(llvm::Value*, llvm::CallInst*, std::vector<llvm::Value*>&);

    TypeIntPair getTupleFromGep(llvm::GetElementPtrInst*);

    void analyzePtrArith(llvm::Instruction*);

    int getScore(void) {
        return rustifyScore;
    }

    int getCveCount(void) {
        return cveCount;
    }

    std::map<TypeIntPair, std::unordered_set<llvm::Function*>>& getMutableStFields(void) {
        return stFieldMutFuncs;
    }

    std::map<TypeIntPair, std::unordered_set<llvm::Function*>>& getUsedStFields(void) {
        return stFieldUsedFuncs;
    }

    std::map<TypeIntPair, std::unordered_set<llvm::Function*>>& getIndCallStFields(void) {
        return stFieldToIndCall;
    }

    std::map<llvm::StructType*, std::unordered_set<llvm::Function*>>& getIndCallStructs(void) {
        return stToIndCall;
    }

    std::unordered_set<llvm::Function*>& getFuncsWithMutStructs(void) {
        return mutStFuncs;
    }

    std::unordered_set<llvm::Function*>& getFuncsWithStructs(void) {
        return useStFuncs;
    }

private:

    /// the function which this cost analysis represents
    llvm::Function* function = nullptr;

    /// preprocessor information
    PreProcessor* preProcessor = nullptr;

    /// passing struct types or pointers to struct types complicates its conversion to Rust
    bool hasStructArg = false;

    /// keep all indirect call instructions of this function in this set
    std::unordered_set<llvm::CallInst*> indCallInsts;
    
    /// keep all direct call instructions which call a function of the same module (not library call)
    std::unordered_set<llvm::CallInst*> internalCallInsts;
    
    /// keep all direct call instructions which call library function (except libc)
    std::unordered_set<llvm::CallInst*> libraryCallInsts;
    
    /// keep all direct call instructions which call libc function
    std::unordered_set<llvm::CallInst*> libcCallInsts;

    /// keep arg type in map (struct or not)
    std::unordered_map<llvm::Argument*, bool> argIsStType;

    /// set of struct type and field tuples which must be mutable (written to) in this function
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>> stFieldMutFuncs;

    /// set of struct type and field tuples which are used in this function
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>> stFieldUsedFuncs;

    /// set of struct type and field tuples which are passed to indirect call sites in a function
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>> stFieldToIndCall;

    /// struct type which are passed to indirect call sites in a function
    std::map<llvm::StructType*, std::unordered_set<llvm::Function*>> stToIndCall;

    /// all functions which need mutable access to a struct
    std::unordered_set<llvm::Function*> mutStFuncs;

    /// all functions which need access to a struct
    std::unordered_set<llvm::Function*> useStFuncs;

    /// keep score of rustifying this function
    int rustifyScore = 0;

    /// how many CVEs have been associated with this function in the past?
    int cveCount = 0;

};

}

#endif
