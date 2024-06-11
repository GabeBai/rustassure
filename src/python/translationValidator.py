import os
import logging
import sys
import re
import glob
from openai import OpenAI
import extractFuncSrcCode as funcExtractor
import subprocess

sys.path.insert(0, './python-utils/')

import util

class Range:
    """
    Represents a 0-indexed range of line numbers that span a definition (function, typedef, etc)
    """
    def __init__(self, sym, start, end):
        self.sym = sym
        self.start = int(start) - 1
        self.end = int(end) - 1

class FileRanges:
    """
    Represents the ranges for the functions, and everything else that is useful
    """
    def __init__(self):
        self.funcRanges = []
        self.alwaysIncludeRanges = []
        self.funcRangesMap = {}
        self.alwaysIncludeRangesMap = {} 

    def addFuncRange(self, funcRange):
        self.funcRanges.append(funcRange)
        self.funcRangesMap[funcRange.sym] = funcRange

    def addAlwaysIncludeRange(self, alwaysIncludeRange):
        self.alwaysIncludeRanges.append(alwaysIncludeRange)
        self.alwaysIncludeRangesMap[alwaysIncludeRange.sym] = alwaysIncludeRange


class FunctionAndDepsExtractor:
    """
        d  macro definitions [off]
        e  enumerators (values inside an enumeration) [off]
        f  function definitions
        g  enumeration names [off]
        h  included header files [off]
        l  local variables [off]
        m  struct, and union members [off]
        p  function prototypes
        s  structure names [off]
        t  typedefs [off]
        u  union names [off]
        v  variable definitions [off]
        x  external and forward variable declarations [off]
        z  function parameters inside function or prototype definitions [off]
        L  goto labels [off]
        D  parameters inside macro definitions [off]
    """
    def __init__(self, logger):
        self.logger = logger
        testCmd = "ctags --version"
        # We need universal-ctags
        result = subprocess.getoutput(testCmd)
        if "Universal" not in result:
            self.logger.critical("Need Universal Ctags to proceed")
            sys.exit(-1)

    def createRangeFromCtagsLine(self, line):
        tokens = line.split('\t')
        sym = tokens[0]
        start = tokens[4].split(":")[1]
        if "end:" in tokens[-1]:
            end = tokens[-1].split(":")[1]
        else:
            end = start
        self.logger.info("sym = %s start = %s end = %s", sym, start, end)
        r = Range(sym, start, end)
        return r


    def extractFuncsAndDeps(self, filename):
        """
        Use Universal ctags to get the start and end line numbers for
        1. function definitions [f]
        2. Everything else [-flL] except functions, local vars, gotolabels

        Note that we expect preprocessed files.
        Sample cmd: ctags --fields=+ne -o -  --language-force=C --c-kinds=f gzclose.i
        """
        if not filename.endswith('i'):
            self.logger.critical("Can handle only preprocessed files")
            sys.exit(-1)

        self.logger.info("Processing file %s", filename)
        fileRanges = FileRanges()

        funcExtractCmd = "ctags --fields=+ne -o -  --language-force=C --c-kinds=f " + filename
        result = subprocess.getoutput(funcExtractCmd)
        for line in result.splitlines():
            r = self.createRangeFromCtagsLine(line)
            fileRanges.addFuncRange(r)

        alwaysIncludeExtractCmd = "ctags --fields=+ne -o -  --language-force=C --c-kinds=-fLl " + filename
        result = subprocess.getoutput(alwaysIncludeExtractCmd)
        for line in result.splitlines():
            r = self.createRangeFromCtagsLine(line)
            fileRanges.addAlwaysIncludeRange(r)

class Translator:
    def __init__(self, logger, baseUrl, apiKey,
            srcLang, dstLang,
            model, systemPrompt):
        self.logger = logger
        self.baseUrl = baseUrl
        self.apiKey = apiKey
        self.srcLang = srcLang
        self.dstLang = dstLang
        self.model = model
        self.systemPrompt = systemPrompt
        self.client = OpenAI(base_url=self.baseUrl, api_key=self.apiKey)
 
    def translate(self, funcSrc):
        self.logger.debug("Translating: %s",funcSrc)
        request = "Translate" + self.srcLang + " to " + self.dstLang + " and return ONLY the translated Rust code with NO explanation" +  "\n" + funcSrc
        completion = self.client.chat.completions.create(
                model=self.model,
                messages=[
                    {"role": "system", "content": self.systemPrompt},
                    {"role": "user", "content": request}], 
                temperature=0.7,)
        self.logger.debug("response = %s", completion)
        result = completion.choices[0].message.content
        parts = result.split("```")
        if len (parts) > 2:
            result = parts[1].strip()
        return result

def getLogger(logPath):
    if os.path.exists(logPath):
        os.remove(logPath)
    # Create a logger
    logger = logging.getLogger('translationvalidator_logger')
    logger.setLevel(logging.DEBUG)
    
    # Create file handler which logs even debug messages
    fh = logging.FileHandler(logPath)
    fh.setLevel(logging.DEBUG)
    
    # Create console handler with a higher log level
    ch = logging.StreamHandler()
    ch.setLevel(logging.INFO)

    # Create formatter and add it to the handlers
    formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
    fh.setFormatter(formatter)
    ch.setFormatter(formatter)

    # Add the handlers to the logger
    logger.addHandler(fh)
    logger.addHandler(ch)

    return logger

def createTranslator(logger):
    translator = Translator(logger,
            "http://172.31.224.1:12345/v1",
            "lm-studio",
            "C",
            "Rust",
            "TheBloke/CodeLlama-7B-Instruct-GGUF",
            "You are an expert programmer in C and Rust and are an expert in translating C to Rust code. Please focus on correctness and do not add any extra explanation of the result. Return ONLY the translated code")
    return translator

def findFunctionNames(logger, filename):
    # Getting the function names from a file is proving to be quite challenging
    # Hamed's way of iterating through the binary seems to cause issues if
    # the binary has removed dead code or inlined functions
    # Trying to use regex for this was just SAD.
    # So, I first generate the LLVM bitcode, which standardizes the function
    # definitions and then just grep
    functionNodes = []
    cmd = "clang -c -emit-llvm -S " + filename + " -o - | grep define"
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True).stdout
    logger.info(result)
    for line in result.splitlines():
        splits = line.split("@")
        # logger.info(line)
        functionName = splits[1].split("(")[0]
        functionNodes.append(functionName)
    """
    for func in functionNodes:
        logger.info("Found function: %s", func)
    """
    return functionNodes

def getFunctions(logger, extractor, binPath, srcPath):
    for filename in glob.iglob(os.path.join(srcPath, "*.i"), recursive=True):
        logger.debug("Extracting function bodies for file: %s", filename)
        extractor.extractFuncsAndDeps(filename)

def process_func(translator, funcs, key, logger, individualFuncPath):
    result = "" # translator.translate(funcs[key])
    rs_path = os.path.join(individualFuncPath, f"{key}.rs")
    c_path = os.path.join(individualFuncPath, f"{key}.i")

    with open(rs_path, "w") as rs_file:
        rs_file.write(result)
    with open(c_path, "w") as c_file:
        c_file.write(funcs[key])

def emitLLVMBitcodes(rootPath, logger):
    """
    rootPath is where the individual functions are at
    """ 
    rustSrcPattern = os.path.join(rootPath, "individual-funcs", "*.rs")
    cSrcPattern = os.path.join(rootPath, "individual-funcs", "*.i")
    for filename in glob.iglob(rustSrcPattern, recursive=True):
        # Compile it and generate the bitcode file
        logger.debug("Compiling Rust file %s ", filename)
        emitBitcodeCmd = "rustc -emit=llvm-bc " + filename
        result = subprocess.run(emitBitcodeCmd, shell=True, capture_output=True, text=True)
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            logger.debug ("Compilation succeeded for %s", filename)
        logger.warn (result.stderr)
    for filename in glob.iglob(cSrcPattern, recursive=True):
        logger.debug("Compiling C file %s ", filename)
        emitBitcodeCmd = "clang -c -emit-llvm " + filename
        result = subprocess.run(emitBitcodeCmd, shell=True, capture_output=True, text=True)
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            logger.debug ("Compilation succeeded for %s", filename)
        logger.warn (result.stderr)


def processCodebase(codebasePath, execPath):
    logger = getLogger("./validator.log")
    extractor = FunctionAndDepsExtractor(logger)
    # If the directory already exists, then just skip it
    if not os.path.isdir(os.path.join(codebasePath, "individual-funcs")):
        translator = createTranslator(logger) 
        funcs = getFunctions(logger, extractor, execPath, codebasePath)
        """
        logger.info("Extracted %d functions", len(funcs))
        individualFuncPath = codebasePath+"/individual-funcs/"
        try:
            os.mkdir(individualFuncPath)
        except:
            logger.debug("Individual functions directory already exists")
        threads = []
        for key in funcs:
            process_func(translator, funcs, key, logger, individualFuncPath)
        """
    
    # emitLLVMBitcodes("./inputs-complex/zlib-1.3.1/", logger)

if __name__ == "__main__":
    processCodebase("./inputs-complex/zlib-1.3.1/", "./inputs-complex/zlib-1.3.1/libz.so")
