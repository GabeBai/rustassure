import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess


TOKEN_TO_WORD_FACTOR = 0.75
CONTINUATION_PROMPT_LEN = 200 # 200 chars

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
            r = self.createRangeFromCtagsLine(line, fileContents)
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
    def __init__(self, logger, baseUrl, apiKey, ctxWindow,
            srcLang, dstLang,
            model, systemPrompt):
        self.logger = logger
        self.baseUrl = baseUrl
        self.apiKey = apiKey
        self.ctxWindow = ctxWindow
        self.REQUEST_TOKEN_LIMIT = int((self.ctxWindow - 2048)/2)
        self.MAX_CHUNK_SIZE_WORDS = int(self.REQUEST_TOKEN_LIMIT * TOKEN_TO_WORD_FACTOR)
        self.srcLang = srcLang
        self.dstLang = dstLang
        self.model = model
        self.systemPrompt = systemPrompt
        # If we're using LLAMA then we need to provide self.baseUrl
        # self.client = OpenAI(base_url=self.baseUrl, api_key=self.apiKey)
        self.client = OpenAI(api_key=self.apiKey)

    def estimateTokens(self, funcSrc):
        words = funcSrc.split()
        tokens = int(float(len(words))/TOKEN_TO_WORD_FACTOR)
        return tokens

    def isResponseTruncated(self, completion):
        finish_reason = completion.choices[0].finish_reason
        self.logger.debug("Finish reason: %s", finish_reason)
        return finish_reason

    def getResponse(self, request):
        completion = self.client.chat.completions.create(
            model=self.model,
            messages=[
                {"role": "system", "content": self.systemPrompt},
                {"role": "user", "content": request}], 
            max_tokens = maxTokens,
            temperature = 0.2,
            top_p = 0.1)
        response = completion.choices[0].message.content
        # This is OpenAI specific
        # Try to remove the ```rust at the first line that I think indicates formatting
        responseLines = response.split("\n")
        if "rust" in responseLines[0]:
            response = "\n".join(responseLines[1:])
        return (completion, response)

    def send(self, funcName, request): 
        # Compute the maxTokens that the response can have
        # with 1K tokens as a buffer in case we get the computation wrong
        # and to leave room for the prompt
        maxTokens = self.ctxWindow - self.estimateTokens(request) - 1024
        (completion, response) = getResponse(request)
        # self.logger.debug("response = %s", completion)

        # We might have to do continuation and chaining
        # Though TBH, this would only work if for some reason
        # the truncation happens because of other reasons than 
        # overflowing the context window.
        # If the context window overflows then it has lost the input C code
        # sending it the last few generated response tokens wouldn't be of any use?
        #
        # What we _should_ do is that we should generate 
        fullResponse = response

        # Keep on telling it to continue till the response is no
        # longer truncated
        while self.isResponseTruncated(completion):
            logger.warn("Response is truncated for function: %s", funcName)
            continuationPrompt = response.split()[0-CONTINUATION_PROMPT_LEN:]
            continuationPrompt = ' '.join(continuationPrompt)
            (completion, response) = getResponse(continuationPrompt)
            fullResponse = fullResponse + response
        return fullResponse
    
    def chunkAndSend(self, funcName, request):
        tokenEstimate = self.estimateTokens(request)
        fullResponse = ""
        numChunks = 0
        if tokenEstimate > self.REQUEST_TOKEN_LIMIT:
            lines = request.split("\n")
            # Get the next chunk
            nextLineIndex = 0
            while nextLineIndex < len(lines):
                # Build a chunk
                numWordsSoFar = 0
                chunk = ""
                # Keep consuming the next line as long as consuming the next line wouldn't go over our
                # computed MAX_CHUNK_SIZE_WORDS and we haven't consumed the entire file
                nextLineWordCount = len(lines[nextLineIndex].split())
                while numWordsSoFar + nextLineWordCount < self.MAX_CHUNK_SIZE_WORDS and nextLineIndex < len(lines):
                    chunk = chunk + '\n' + lines[nextLineIndex]
                    nextLineIndex = nextLineIndex + 1
                    numWordsSoFar = numWordsSoFar + nextLineWordCount
                # We've built a chunk! Let's send it
                response = self.send(funcName, chunk)
                numChunks = numChunks + 1
        else:
            fullResponse = self.send(request)
        self.logger.info("Sent request in %d chunks", numChunks)
        return fullResponse

    def translate(self, funcName, funcSrc):
        self.logger.debug("Translating: %s",funcSrc)
        request = "Translate " + self.srcLang + " to " + self.dstLang + ". The C source code might be chunked across different requests. Please don't end the function. Also DO NOT reply with anything other than the Rust code. No English words needed." 
        result = chunkAndSend(funcName, request)
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
            16*1024,
            "C",
            "Rust",
            "gpt-3.5-turbo",
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
        translatedResult = translator.translate(key, funcs[key])
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
            emitBitcodeCmd = "rustc --emit=llvm-bc -o " + filename + ".bc " + filename
        else:
            emitBitcodeCmd = "rustc --emit=llvm-bc --crate-type=lib -o " + filename + ".bc " + filename
        logger.debug("Running command %s", emitBitcodeCmd)
        result = subprocess.run(emitBitcodeCmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            logger.info ("Compilation succeeded for %s", filename)
    for filename in glob.iglob(cSrcPattern, recursive=True):
        logger.debug("Compiling C file %s ", filename)
        emitBitcodeCmd = "clang -c -emit-llvm -o " + filename + ".bc " + filename
        logger.debug("Running command %s", emitBitcodeCmd)

        result = subprocess.run(emitBitcodeCmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            logger.info ("Compilation succeeded for %s", filename)

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
    """
    translator = createTranslator(logger)
    with open("./inputs-complex/zlib-1.3.1/crc32.i") as f:
        lines = f.read()
    response = translator.chunkAndSend("dummy", lines)
    """
    

if __name__ == "__main__":
    processCodebase("./inputs-complex/zlib-1.3.1/", "./inputs-complex/zlib-1.3.1/libz.so")
