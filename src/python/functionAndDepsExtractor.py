import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess
import traceback

# sys.path.append("/home/tpalit/clang-llvm/llvm-project-14.0.0.src/clang/bindings/python/")
# 
# import clang.cindex
# 
# clang.cindex.Config.set_library_file('/usr/lib/libclang.so')  # Adjust path if necessary
# index = clang.cindex.Index.create()


from functionAndDeps import FunctionAndDependencies

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
    It has an alwaysInclude range: This will be stuff that is mandatory for that function
    and will typically have the struct definitions, typedefs and so on.
    Then, there is optional content to be included, only if it fits in the
    context-window.
    """
    def __init__(self):
        # The ranges for the functions
        self.funcRanges = []
        self.funcRangesMap = {}

        # Any header file information that is necessarily included
        self.alwaysIncludeRanges = []
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
        """ 
        A ctags line is:
        random_data     deflate.i       /^struct random_data$/;"        s       line:1167       file:   end:1176
        In some cases end: field is missing, but those are one-liners
        """
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

    def extractGlobalTypeUsageDetails(self, srcPath, funcMap):
        # This information doesn't have to be completely 
        # syntactically accurate.
        # So, we can get by doing text-level processing
        # and don't need a clang tool or anything
        
        self.logger.info("Extracting char*/void* fields from %d functions", len(funcMap))
        for funcSym in funcMap:
            # 1. collect all struct types that have void* or char* pointers
            # 2. gather their uses in other functions
            fullFileName = os.path.join(srcPath, funcSym+".i")

            cmd = "struct-with-generic-pointer-printer " + fullFileName

            self.logger.info("Extracting char*/void* field pointers from structs for file %s", funcSym)

            result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
            if result.returncode != 0:
                self.logger.info("Failed command and bailing: %s", cmd)
                self.logger.info("Stderr: %s", result.stderr)
                continue
            else:
                self.logger.debug("Output of %s", cmd)
                self.logger.debug("%s", result.stdout)


            structNames = set()
            for line in result.stdout.split("\n"):
                if len(line) > 0:
                    structNames.add(line)

            # Didn't find any problematic struct
            if len(structNames) == 0:
                continue

            functionAndDeps = funcMap[funcSym]
            # Then go over every other function
            for otherFunc in funcMap:
                # We will use the python-clang bindings
                # It is read-only so it shouldn't cause much of a trouble
                otherFullFileName = os.path.join(srcPath, otherFunc+".i")
                # self.logger.info("Testing file %s", otherFullFileName)
                # Run the command
                otherCmd = "struct-field-use-printer " + otherFullFileName
                result = subprocess.run(otherCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
                if result.returncode != 0:
                    self.logger.info("Failed command and bailing: %s", cmd)
                    continue
                else:
                    self.logger.debug("Output of %s", otherCmd)
                    self.logger.debug("%s", result.stdout)

                # Let's parse
                # output looks like this
                # <Struct name> : <field name> : <use> 
                for outputLine in result.stdout.split("\n"):
                    tokens = outputLine.split(":")
                    structName = tokens[0].strip()
                    if structName not in structNames:
                        continue
                    fieldName = tokens[1].strip()
                    # self.logger.info("Field name: %s", fieldName)
                    use = tokens[2].strip()
                    # self.logger.info("Use: %s", use)
                    if ';' in use:
                        # Multiple statements
                        useTokens = use.split(";")
                        for useToken in useTokens:
                            if fieldName in useToken:
                                # Add it to the functionAndDeps
                                functionAndDeps.addTypeUsage(structName, useToken)

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

        self.logger.info("(Re-)extracting functions from file %s", filename)
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
        # The logic here is that everything that comes _before_ this function
        # will be treated as "always included" in case there is a dependency

        # When this python function is invoked for an entire C file, this will
        # contain everything include in the header files
        # When this python function is invoked for the individual C files, this
        # will contain only the necessary dependencies. A clang tool (or many) 
        # will remove the unnecessary dependencies.
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
            r = self.createRangeFromCtagsLine(line, fileContents)
            fileRanges.addAlwaysIncludeRange(r)
        """

        funcMap = {}

        # for each function, add everything before it in the AlwaysInclude map
        for funcSym in fileRanges.funcRangesMap:
            # Get the function and its dependencies
            functionAndDeps = FunctionAndDependencies(funcSym)
            funcRange = fileRanges.funcRangesMap[funcSym]
            sortedAlwaysIncludedRanges = sorted(fileRanges.alwaysIncludeRanges, key = lambda x: x.start)
            typeDeclDefCode = []
            for alwaysIncludeRange in sortedAlwaysIncludedRanges:
                if alwaysIncludeRange.end < funcRange.start:
                    # This range was before the function in the file
                    # self.logger.info("For file %s, for function %s, with range %d - %d, appending ranges %d - %d", filename, funcSym, funcRange.start, funcRange.end + 1, alwaysIncludeRange.start, alwaysIncludeRange.end + 1)

                    typeDeclDefCode.extend(fileContents[alwaysIncludeRange.start : alwaysIncludeRange.end + 1])
            functionAndDeps.setTypeDeclDefCodeLines("".join(typeDeclDefCode))

            functionAndDeps.setFuncCodeLines("".join(fileContents[funcRange.start : funcRange.end + 1]))
            funcMap[funcSym] = functionAndDeps
            # self.logger.info(functionAndDeps.typeDeclDefCodeLines)
            # self.logger.info(functionAndDeps.funcCodeLines)

        
        return funcMap
