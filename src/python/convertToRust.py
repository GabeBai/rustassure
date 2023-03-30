"""
Extract the syscalls for each process

"""
import logging
import os
import sys
import json
import time

sys.path.insert(0, './python-utils/')

import util
import binaryAnalysis

import re
import optparse
import codetranslatorfactory

def isValidOpts(opts):
    """
    Check if the required options are sane to be accepted
        - Check if the provided files exist
        - Check if two sections (additional data) exist
        - Read all target libraries to be debloated from the provided list
    :param opts:
    :return:
    """
    if not options.configpath:
        parser.error("All options --configpath should be provided.")
        return False

    return True

def setLogPath(logPath):
    """
    Set the property of the logger: path, config, and format
    :param logPath:
    :return:
    """
    if os.path.exists(logPath):
        os.remove(logPath)

    rootLogger = logging.getLogger("coverage")
    if options.debug:
        logging.basicConfig(filename=logPath, level=logging.DEBUG)
        rootLogger.setLevel(logging.DEBUG)
    else:
        logging.basicConfig(filename=logPath, level=logging.INFO)
        rootLogger.setLevel(logging.INFO)

#    ch = logging.StreamHandler(sys.stdout)
    consoleHandler = logging.StreamHandler()
    rootLogger.addHandler(consoleHandler)
    return rootLogger
#    rootLogger.addHandler(ch)

def runLlvmPass(llvmCmd, simpleApiPath, complexApiPath, 
                bitcodePath, exportedFuncPath, llvmLogPath,
                rootLogger, usecache=False):
    if ( usecache and util.isFile(simpleApiPath) and util.isFile(simpleApiPath) ):
        rootLogger.info("Skipping running LLVM pass, using cache from previous runs\n")
        return True
    llvmCmdFinal = llvmCmd.format(bitcodePath, simpleApiPath, complexApiPath, exportedFuncPath, llvmLogPath)
    rootLogger.debug("Running llvm cmd: %s\n", llvmCmdFinal)
    returncode, out, err = util.runCommand(llvmCmdFinal)
    if ( returncode != 0 ):
        rootLogger.error("Failed to run llvm cmd: %s for bitcode %s\n", llvmCmdFinal, bitcodePath)
        return False
    return True

def initializeTranslators(translators, trainingStr, srcLang, dstLang, rootLogger):
    codeTranslators = set()
    apikey = ""
    for translator in translators:
        for name, options in translator.items():
            rootLogger.debug("translator: %s", name)
            modelEngine = options.get("engine", None) #"text-davinci-002"
            apiKeyFile = options.get("apikeypath", None)
            if ( apiKeyFile ):
                apiFile = open(apiKeyFile, 'r')
                apikey = apiFile.read().strip()
            codeTransObj = codetranslatorfactory.TranslatorFactory(rootLogger, 
                                            apikey, modelEngine, 
                                            srcLang, dstLang,
                                            trainingStr, name)
            codeTranslators.add(codeTransObj)
    return codeTranslators

def extractExportedFuncs(binaryPath, filePath):
    exportedLibFuncs = util.extractExportedFunctionsWithNm(binaryPath, rootLogger)
    outputFile = open(filePath, 'w')
    for func in exportedLibFuncs:
        func = func.strip()
        outputFile.write(func + "\n")
        outputFile.flush()
    outputFile.close()


def extractSimpleComplexFuncs(inputs, llvmCmd, simpleApiPath, 
                                complexApiPath, exportFuncPath, 
                                llvmLogPath, rootLogger, cache):
    libToBinaryPath = dict()
    libToSimpleFuncs = dict()
    libToComplexFuncs = dict()
    for libDicts in inputs:
        for libName, libPaths in libDicts.items():
            bitcodePath = libPaths.get("bitcodepath", None)
            binaryPath = libPaths.get("binarypath", None)
            if ( not bitcodePath or not binaryPath ):
                continue
            libToBinaryPath[libName] = binaryPath
            # run LLVM pass
            simpleApiPathFinal = simpleApiPath.format(libName)
            complexApiPathFinal = complexApiPath.format(libName)
            exportFuncPathFinal = exportFuncPath.format(libName)
            llvmLogPathFinal = llvmLogPath.format(libName)

            extractExportedFuncs(binaryPath, exportFuncPathFinal)

            if ( not runLlvmPass(llvmCmd, simpleApiPathFinal, complexApiPathFinal, 
                                    bitcodePath, exportFuncPathFinal, llvmLogPathFinal,
                                    rootLogger, cache) ):
                continue
            
            # get simple and complex APIs
            if ( not util.isFile(simpleApiPathFinal) or not util.isFile(complexApiPathFinal) ):
                rootLogger.error("simple/comple api list not generated after running LLVM cmd, exiting...\n")
                sys.exit(-1)
            simpleApiFuncs = util.readFile(simpleApiPathFinal)
            complexApiFuncs = util.readFile(complexApiPathFinal)
            libToSimpleFuncs[libName] = simpleApiFuncs
            libToComplexFuncs[libName] = complexApiFuncs

    return libToBinaryPath, libToSimpleFuncs, libToComplexFuncs

def extractFuncCode(libToBinaryPath, libToSimpleFuncNames, libToComplexFuncNames, 
                                funcFilePathFmt, rootLogger, cache=False):
    libToSimpleFuncPaths = dict()
    libToComplexFuncPaths = dict()
    for libName, binaryPath in libToBinaryPath.items():
        libBinary = binaryAnalysis.BinaryAnalysis(binaryPath, rootLogger)
        for funcName in libToSimpleFuncNames[libName]:
            funcName = funcName.strip()
            rootLogger.debug("extracting func code for simple func: %s\n", funcName)
            if ( not util.isFile(funcFilePathFmt.format("simple", libName, funcName)) or not cache):
                funcSrc = libBinary.extractFuncSrcCode(funcName)
                util.writeToFile(funcFilePathFmt.format("simple", libName, funcName), funcSrc)
            funcPaths = libToSimpleFuncPaths.get(libName, set())
            funcPaths.add((funcName, funcFilePathFmt.format("simple", libName, funcName)))
            libToSimpleFuncPaths[libName] = funcPaths
        for funcName in libToComplexFuncNames[libName]:
            funcName = funcName.strip()
            rootLogger.debug("extracting func code for complex func: %s\n", funcName)
            if ( not util.isFile(funcFilePathFmt.format("complex", libName, funcName)) or not cache):
                funcSrc = libBinary.extractFuncSrcCode(funcName)
                util.writeToFile(funcFilePathFmt.format("complex", libName, funcName), funcSrc)
            funcPaths = libToComplexFuncPaths.get(libName, set())
            funcPaths.add((funcName, funcFilePathFmt.format("complex", libName, funcName)))
            libToComplexFuncPaths[libName] = funcPaths
    return libToSimpleFuncPaths, libToComplexFuncPaths

def translateFuncs(translator, funcFilePaths, filePathFmt, libName, funcType, rootLogger):
    translatedFuncs = set()
    for funcFilePath in funcFilePaths:
        funcName = funcFilePath[0]
        path = funcFilePath[1]
        funcSrc = ""
        try:
            # read function src code
            funcFile = open(path, 'r')
            funcSrc = funcFile.read()
            funcFile.close()
        except:
            rootLogger.error("Could not open funcFilePath: %s\n", path)
            continue
        try:
            # translate given src code
            translatedSrc = translator.translate(funcSrc)
            rootLogger.debug("Input:\n%s\n\n---------------\nTranslated:\n%s\n\n", funcSrc, translatedSrc)
            translatedFuncs.add(translatedSrc)
            # store translation in file
            path = filePathFmt.format(funcType, libName, funcName)
            util.writeConfigToFile(path, translatedSrc)
        except Exception as err:
            rootLogger.error("Could not translate or write to file correctly: %s", err)
        time.sleep(10)
    return translatedFuncs

def translateCode(libName, simpleFuncPaths, complexFuncPaths, 
                    filePathFmt, translator, rootLogger, cache=False):
    translatedSimpleFuncs = translateFuncs(translator, simpleFuncPaths, filePathFmt, libName, "simple", rootLogger)
    translatedComplexFuncs = translateFuncs(translator, complexFuncPaths, filePathFmt, libName, "complex", rootLogger)
    

if __name__ == "__main__":

    """
    Use OpenAI to convert provided functions to another language
    """
    usage = "Usage: %prog -i <Target binary> -o <File to store exported function list>"

    parser = optparse.OptionParser(usage=usage, version="1")

    parser.add_option("", "--configpath", dest="configpath", default=None, nargs=1,
                      help="Path to JSON configuration")

    parser.add_option("", "--apikey", dest="apikey", default=None, nargs=1,
                      help="Path to file containing API key")

    parser.add_option("", "--cache", dest="cache", action="store_true", default=False,
                      help="Use cached results for LLVM pass")

    parser.add_option("-d", "--debug", dest="debug", action="store_true", default=False,
                      help="Debug enabled/disabled")

    (options, args) = parser.parse_args()
    rootLogger = setLogPath("converttorust.log")
    if not isValidOpts(options):
        rootLogger.error("Cannot run python script because of missing options")
        sys.exit(-1)

    configFileMap = None
    try:
        configFile = open(options.configpath, 'r')
        configFileStr = configFile.read()
        configFileMap = json.loads(configFileStr)
    except Exception as e:
        rootLogger.error("Trying to open config json %s, but doesn't exist: %s",
                        options.configpath, e)
        sys.exit(-1)


    funcSet = set()

    ''' read function, store in string, pass to openai '''
    trainingStr = configFileMap.get("trainingFile", "")        # give some sample C to safe rust code translations
    srcLang = configFileMap.get("srcLang", "")
    dstLang = configFileMap.get("dstLang", "")
    srcFolder = configFileMap.get("srcFolder", None)
    #if ( not srcFolder ):
    #    rootLogger.error("No source folder provided in config json. exiting ...")
    #    sys.exit(-1)

    #for filename in os.listdir(srcFolder):
    #    srcFilePath = os.path.join(srcFolder, filename)
    #    # checking if it is a file
    #    if os.path.isfile(srcFilePath):
    #        srcFile = open(srcFilePath, 'r')
    #        srcStr = srcFile.read()
    #        funcSet.add(srcStr)

    llvmCmd = configFileMap.get("llvm-pass-cmd", "")
    llvmLogPath = configFileMap.get("llvm-log-path", "")
    simpleApiPath = configFileMap.get("simple-api-path", "")
    complexApiPath = configFileMap.get("complex-api-path", "")
    exportFuncPath = configFileMap.get("export-func-path", "")
    inputs = configFileMap.get("inputs", None)

    util.createFolder("./inputs-simple")
    util.createFolder("./inputs-complex")
    util.createFolder("./outputs-simple")
    util.createFolder("./outputs-complex")

    funcFilePathFmt = "./inputs-{}/{}-{}-orig.c"
    transFuncFilePathFmt = "./outputs-{}/{}-{}-trans"

    translators = configFileMap.get("translators", None)
    if ( not translators ):
        rootLogger.error("No translator specified in config json, exiting...")
        sys.exit(-1)

    '''
    need:
        - library binary path with debug symbols
        - library bitcode

    do:
        - run LLVM pass and extract simple functions
        - extract source code for simple functions
        - convert simple functions to rust
    '''

    # libToSimpleFuncNames: lib -> simple func names
    # libToComplexFuncNames: lib -> complex func names

    # libToSimpleFuncPaths: lib -> simple func paths containing the function src code
    # libToComplexFuncPaths: lib -> complex func paths containing the function src code

    codeTranslators = initializeTranslators(translators, trainingStr, srcLang, dstLang, rootLogger)
    libToBinaryPath, libToSimpleFuncNames, libToComplexFuncNames = extractSimpleComplexFuncs(inputs, llvmCmd, 
                                                                    simpleApiPath, complexApiPath, exportFuncPath,
                                                                    llvmLogPath, rootLogger, options.cache)
    libToSimpleFuncPaths, libToComplexFuncPaths = extractFuncCode(libToBinaryPath, libToSimpleFuncNames, 
                                                                  libToComplexFuncNames, funcFilePathFmt,
                                                                  rootLogger, 
                                                                  options.cache)
    libToSimpleTranslated = dict()
    libToComplexTranslated = dict()
    for codeTransObj in codeTranslators:
        for libName, funcSet in libToSimpleFuncPaths.items():
            libToSimpleTranslated[libName], libToComplexTranslated[libName] = translateCode(libName, 
                                                                libToSimpleFuncPaths[libName],
                                                                libToComplexFuncPaths[libName], 
                                                                transFuncFilePathFmt,
                                                                codeTransObj, rootLogger)
