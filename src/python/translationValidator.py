import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess

class Range:
    """
    Represents a 0-indexed range of line numbers that span a definition (function, typedef, etc)
    This range is inclusive on both ends
    """
    def __init__(self, sym, start, end):
        self.sym = sym
        self.start = start
        self.end = end

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
    ctags -c-kinds options:
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

    def createRangeFromCtagsLine(self, line, allLines):
        tokens = line.split('\t')
        sym = tokens[0]
        start = tokens[4].split(":")[1]
        if "end:" in tokens[-1]:
            end = tokens[-1].split(":")[1]
        else:
            end = start
        # Need for hack!
        # The function header can span more than one lines
        # We hack to capture it
        startIndex = int(start) - 1
        endIndex = int(end) - 1 
        if startIndex > 0:
            s = startIndex - 1
            # As long the previous line isn't empty or containing #, ;, or }
            # self.logger.info("Prev index = %d, total = %d", s, len(allLines))
            prevLine = allLines[s].strip()
            while s >= 0 and len(prevLine) > 0 and "#" not in prevLine and ";" not in prevLine and "}" not in prevLine:
                # self.logger.info("prevLine: %s", prevLine)
                startIndex = s
                s = startIndex - 1
                # self.logger.info("startIndex = %d", startIndex)
                prevLine = allLines[s].strip()
        r = Range(sym, startIndex, endIndex)
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
        totalRange = len(result.splitlines()) - 1

        fileContents = []
        # Read the file contents
        with open(filename, 'r') as f:
            for line in f:
                fileContents.append(line)

        for line in result.splitlines():
            r = self.createRangeFromCtagsLine(line, fileContents)
            fileRanges.addFuncRange(r)

        # Compute the always include range
        sortedFileRanges = sorted(fileRanges.funcRanges, key = lambda x: x.start)

        start = 0
        for fileRange in sortedFileRanges:
            if fileRange.start > start:
                r = Range("", start, fileRange.start-1)
                fileRanges.addAlwaysIncludeRange(r)
            start = fileRange.end + 1
        
        if start < totalRange:
            r = Range("", start, totalRange)
            fileRanges.addAlwaysIncludeRange(r)
        
        """
        alwaysIncludeExtractCmd = "ctags --fields=+ne -o -  --language-force=C --c-kinds=-fLl " + filename
        result = subprocess.getoutput(alwaysIncludeExtractCmd)
        for line in result.splitlines():
            r = self.createRangeFromCtagsLine(line)
            fileRanges.addAlwaysIncludeRange(r)
        """

        funcMap = {}

        # for each function, add everything before it in the AlwaysInclude map
        for funcSym in fileRanges.funcRangesMap:
            codeLines = []
            funcRange = fileRanges.funcRangesMap[funcSym]
            sortedAlwaysIncludedRanges = sorted(fileRanges.alwaysIncludeRanges, key = lambda x: x.start)
            for alwaysIncludeRange in sortedAlwaysIncludedRanges:
                if alwaysIncludeRange.end < funcRange.start:
                    # This range was before the function in the file
                    # self.logger.info("For file %s, for function %s, with range %d - %d, appending ranges %d - %d", filename, funcSym, funcRange.start, funcRange.end + 1, alwaysIncludeRange.start, alwaysIncludeRange.end + 1)
                    codeLines.extend(fileContents[alwaysIncludeRange.start : alwaysIncludeRange.end + 1])
            codeLines.extend(fileContents[funcRange.start : funcRange.end + 1])
            # self.logger.info(codeLines)
            code = "".join(codeLines)
            funcMap[funcSym] = code
            # self.logger.info(code)
        return funcMap

class Translator:
    """
    https://platform.openai.com/docs/guides/text-generation/chat-completions-api
    """
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
        # If we're using LLAMA then we need to provide self.baseUrl
        # self.client = OpenAI(base_url=self.baseUrl, api_key=self.apiKey)
        self.client = OpenAI(api_key=self.apiKey)

    def translate(self, funcSrc):
        self.logger.debug("Translating: %s",funcSrc)
        request = "Translate " + self.srcLang + " to " + self.dstLang + " and return ONLY the translated Rust code with NO explanation" +  "\n" + funcSrc
        # self.logger.warn("Request: %s", request)
        completion = self.client.chat.completions.create(
                model=self.model,
                messages=[
                    {"role": "system", "content": self.systemPrompt},
                    {"role": "user", "content": request}], 
                temperature=0.4,)
        # self.logger.debug("response = %s", completion)
        result = completion.choices[0].message.content
        parts = result.split("```")
        if len (parts) > 2:
            result = parts[1].strip()
            resultLines = result.split("\n")
            if "rust" in resultLines[0]:
                result = "\n".join(resultLines[1:])            
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
            os.environ.get('OPENAI_KEY'),
            "C",
            "Rust",
            "gpt-4o",
            "You are an expert programmer in C and Rust and are an expert in translating C to Rust code.")
    return translator

def getFunctions(logger, extractor, binPath, srcPath):
    fileFuncMap = {}
    for filename in glob.iglob(os.path.join(srcPath, "*.i"), recursive=True):
        """
        if "deflate.i" not in filename:
            continue
        """
        logger.debug("Extracting function bodies for file: %s", filename)
        funcMap = extractor.extractFuncsAndDeps(filename)
        fileFuncMap.update(funcMap)
    return fileFuncMap

def translateAndCreateIndividualFiles(translator, funcs, key, logger, individualFuncPath):
    try:
        translatedResult = translator.translate(funcs[key])
        # logger.info(translatedResult)
        rs_path = os.path.join(individualFuncPath, f"{key}.rs")
        c_path = os.path.join(individualFuncPath, f"{key}.i")

        with open(rs_path, "w") as rs_file:
            rs_file.write(translatedResult)
        with open(c_path, "w") as c_file:
            c_file.write(funcs[key])
        logger.info("Function %s successfully translated", key)
    except:
        logger.warn("Function %s failed to translate", key)

def emitLLVMBitcodes(rootPath, logger):
    """
    rootPath is where the individual functions are at
    """ 
    rustSrcPattern = os.path.join(rootPath, "individual-funcs", "*.rs")
    cSrcPattern = os.path.join(rootPath, "individual-funcs", "*.i")
    for filename in glob.iglob(rustSrcPattern, recursive=True):
        # Compile it and generate the bitcode file
        logger.debug("Compiling Rust file %s ", filename)
        # Check if the file has a fn main() 
        # If not, try to compile as a library (or it complains that there's no main)
        # rustc doesn't seem to have a -c option
        isBinary = False
        with open(filename) as f:
            for line in f:
                if "fn main(" in line:
                    isBinary = True
                    break
        if isBinary:
            emitBitcodeCmd = "rustc -emit=llvm-bc " + filename
        else:
            emitBitcodeCmd = "rustc --emit=llvm-bc --crate-type=lib " + filename
        result = subprocess.run(emitBitcodeCmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            logger.debug ("Compilation succeeded for %s", filename)
    for filename in glob.iglob(cSrcPattern, recursive=True):
        logger.debug("Compiling C file %s ", filename)
        emitBitcodeCmd = "clang -c -emit-llvm " + filename
        result = subprocess.run(emitBitcodeCmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            logger.debug ("Compilation succeeded for %s", filename)

def processCodebase(codebasePath, execPath):
    logger = getLogger("./validator.log")
    extractor = FunctionAndDepsExtractor(logger)
    # If the directory already exists, then just skip it
    if not os.path.isdir(os.path.join(codebasePath, "individual-funcs")):
        translator = createTranslator(logger) 
        funcMap = getFunctions(logger, extractor, execPath, codebasePath)
        logger.debug("Extracted %d functions", len(funcMap))
        individualFuncPath = codebasePath+"/individual-funcs/"
        try:
            os.mkdir(individualFuncPath)
        except:
            logger.debug("Individual functions directory already exists")
        for key in funcMap:
            translateAndCreateIndividualFiles(translator, funcMap, key, logger, individualFuncPath)
    emitLLVMBitcodes("./inputs-complex/zlib-1.3.1/", logger)

if __name__ == "__main__":
    processCodebase("./inputs-complex/zlib-1.3.1/", "./inputs-complex/zlib-1.3.1/libz.so")
