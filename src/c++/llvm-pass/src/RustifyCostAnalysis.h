#ifndef RustifyCostAnalysis_H_
#define RustifyCostAnalysis_H_

#include "Graphs/SVFG.h"
#include "WPA/Andersen.h"
#include "SVF-FE/PAGBuilder.h"
#include "PreProcessor.h"
#include "HeapInitFunction.h"
#include "FunctionCostAnalysis.h"
#include "RustifyUtils.h"

namespace Rustify
{

class RustifyCostAnalysis
{

public:
    /// Constructor
    RustifyCostAnalysis(SVF::SVFModule* svfModule_,
                            PreProcessor* preProcessor_):
                          svfModule(svfModule_),
                          preProcessor(preProcessor_) {
    }

    /// Destructor
    virtual ~RustifyCostAnalysis()
    {
        destroy();
    }

    void destroy(){
        // TODO
    }

    void run(void);

    void addToMap(FunctionCostAnalysis*);

    void printStFieldComplexity(void);
private:

    /// the module we are running our analysis against
    SVF::SVFModule *svfModule;

    ///// we only need this for generating a constant i1 int for bool-based cond branches
    //llvm::Module *module =
    //        SVF::LLVMModuleSet::getLLVMModuleSet()->getMainLLVMModule();

    /// we need access to the information processed by the preprocessor
    PreProcessor *preProcessor;

    /// keep each function cost analysis object in this set for later use
    std::unordered_set<FunctionCostAnalysis*> funcCostObjs;

    /// set of struct type and field tuples which must be mutable (written to) in this function
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>> stFieldMutFuncs;

    /// set of struct type and field tuples which are used in this function
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>> stFieldUsedFuncs;

    /// set of struct type and field tuples which are passed to indirect call sites
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>> stFieldToIndCall;

    /// struct types which are passed to indirect call sites
    std::map<llvm::StructType*, std::unordered_set<llvm::Function*>> stToIndCall;

    std::unordered_set<llvm::Function*> allMutStFuncs, allUseStFuncs;   


};

}

#endif
