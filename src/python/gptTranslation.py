import os
import logging
import sys
import re
import glob
from openai import OpenAI
import anthropic
import subprocess
import traceback
import tiktoken
import threading

from more_itertools import unique_everseen

from functionAndDeps import FunctionAndDependencies
from enum import Enum
from functionAndDeps import FunctionAndDependencies
from staticAnalyzer import StaticAnalyzer

GPT3_MODEL="gpt-3.5-turbo"
GPT3_CTX_WINDOW_LEN=16*1024
GPT3_MAX_COMPLETION_TOKENS=4096 # This is the max value you can put for max_tokens: the max size of a response, https://platform.openai.com/docs/models/gpt-4-turbo-and-gpt-4 and search for output tokens

GPT4_MODEL="gpt-4o"
GPT4_CTX_WINDOW_LEN=128*1024
GPT4_MAX_COMPLETION_TOKENS=4096 

COMPILATION_RETRIES=5
MAX_THREADS=40

# https://docs.anthropic.com/en/docs/about-claude/models#model-comparison-table
CLAUDE_3_5_MODEL="claude-3-5-sonnet-20240620"
CLAUDE_CTX_WINDOW_LEN=200*1000
CLAUDE_MAX_COMPLETION_TOKENS=8192

class TranslatorModes(Enum):
    """
    Do basic chunking and chaining of requests
    """
    BASIC_CHUNK_CHAIN = 0
    """ 
    If the compilation fails, then send the compilation error
    Single function per request.
    """
    COMPILATION_FEEDBACK = 1
    """
    Special handling for structs with void*/char* pointers
    First translate these structs along with their uses.
    Then replay the translation for other requests.
    Single function per request.
    """
    CF_STRUCT_REPLAY = 2
    """
    Incrementally add the translated functions to the same compilation unit.
    Replay the already translated functions.
    """
    CF_STRUCT_FN_REPLAY = 3
    """
    Try to stick all the functions in a single request and merge them
    """
    CF_SINGLE_REQUEST_MERGE = 4


class Translator:
    """
    https://platform.openai.com/docs/guides/text-generation/chat-completions-api
    """

    def getTranslatorMode(translatorModeStr):
        if translatorModeStr == "basic":
            return TranslatorModes.BASIC_CHUNK_CHAIN
        elif translatorModeStr == "feedback":
            return TranslatorModes.COMPILATION_FEEDBACK
        elif translatorModeStr == "cf-struct-replay":
            return TranslatorModes.CF_STRUCT_REPLAY
        elif translatorModeStr == "struct-fn-replay":
            return TranslatorModes.CF_STRUCT_FN_REPLAY
        elif translatorModeStr == "single-request-merge":
            return TranslatorModes.CF_SINGLE_REQUEST_MERGE 
        else:
            printf("Invalid translator mode")
            sys.exit(-1)

    def __init__(self, logger, baseUrl, apiKey, ctxWindow, maxCompletionTokens,
            srcLang, dstLang,
            model, systemPrompt, translatorMode):
        self.logger = logger
        self.baseUrl = baseUrl
        self.apiKey = apiKey
        self.ctxWindow = ctxWindow
        self.maxCompletionTokens = maxCompletionTokens
        self.requestTokenLimit = self.ctxWindow - maxCompletionTokens # Should this only be the ctxWindow?
        self.srcLang = srcLang
        self.dstLang = dstLang
        self.model = model
        self.systemPrompt = systemPrompt
        self.translatorMode = translatorMode
        # If we're using LLAMA then we need to provide self.baseUrl
        # self.client = OpenAI(base_url=self.baseUrl, api_key=self.apiKey)
        self.client = OpenAI(api_key=self.apiKey)

    # utility function to check if a request fits in both the context window
    # and the max output token count (actually, just the max output token count
    # because that's always smaller than the context window (I think?)
    def isFitInLimits(self, request):
        tokens = self.countTokens(funcMap[func])
        return (len(tokens) < self.requestTokenLimit and len(tokens) < self.maxCompletionTokens)

    def preanalyze(self, funcMap, individualFuncPath):

        analysisFilePath = os.path.join(individualFuncPath, "analysis.log")
        totalFuncs = len(funcMap) 

        cumulResultMatrix = {}
        cumulResultMatrix['full'] = [0, 0]
        cumulResultMatrix['func'] = [0, 0]
        cumulResultMatrix['decl'] = [0, 0]

        with open(analysisFilePath, 'w') as f:
            f.write("Function: Tokens -> Full-Fits-Request : Full-Fits-Response: Function-Fits-Request: Function-Fits-Response: Decls-Fit-Request: Decls-Fit-Response \n")

            for func in funcMap:
                fullSrc = funcMap[func].typeDeclDefCodeLines + "\n" + funcMap[func].funcCodeLines

                resultMatrix = {}
                resultMatrix['full'] = [False, False]
                resultMatrix['func'] = [False, False]
                resultMatrix['decl'] = [False, False]

                # The full source
                tokens = self.countTokens(fullSrc)
                if tokens < self.requestTokenLimit:
                    resultMatrix['full'][0] = True
                    cumulResultMatrix['full'][0] = cumulResultMatrix['full'][0] + 1
                if tokens < self.maxCompletionTokens:
                    resultMatrix['full'][1] = True
                    cumulResultMatrix['full'][1] = cumulResultMatrix['full'][1] + 1

                # The function only
                tokens = self.countTokens(funcMap[func].funcCodeLines)
                if tokens < self.requestTokenLimit:
                    resultMatrix['func'][0] = True
                    cumulResultMatrix['func'][0] = cumulResultMatrix['func'][0] + 1
                if tokens < self.maxCompletionTokens:
                    resultMatrix['func'][1] = True
                    cumulResultMatrix['func'][1] = cumulResultMatrix['func'][1] + 1

                # Only the decls
                tokens = self.countTokens(funcMap[func].typeDeclDefCodeLines)
                if tokens < self.requestTokenLimit:
                    resultMatrix['decl'][0] = True
                    cumulResultMatrix['decl'][0] = cumulResultMatrix['decl'][0] + 1
                if tokens < self.maxCompletionTokens:
                    resultMatrix['decl'][1] = True
                    cumulResultMatrix['decl'][1] = cumulResultMatrix['decl'][1] + 1

                f.write("%s: %d -> %s : %s: %s: %s: %s: %s \n" % (func, tokens, resultMatrix['full'][0], resultMatrix['full'][1], resultMatrix['func'][0], resultMatrix['func'][1], resultMatrix['decl'][0], resultMatrix['decl'][1]))
            f.write("Summary:\n")
            f.write("Total function: %d\n" % totalFuncs)
            f.write("Full function + decls -> %d fits in request limit, %d fits in response limit\n" % (cumulResultMatrix['full'][0], cumulResultMatrix['full'][1]))
            f.write("Function only -> %d fits in request limit, %d fits in response limit\n" % (cumulResultMatrix['func'][0], cumulResultMatrix['func'][1]))
            f.write("Decls only -> %d fits in request limit, %d fits in response limit\n" % (cumulResultMatrix['decl'][0], cumulResultMatrix['decl'][1]))


    def extractRustCode(self, multilineResponse):
        # self.logger.warn("Going to extract Rust code from %s", multilineResponse)
        pattern = re.compile(r"```rust\n(.*?)```", re.DOTALL)
        matches = pattern.findall(multilineResponse)
        # self.logger.warn(matches)
        if len(matches) > 0:
            return "\n".join(matches)
        else:
            return multilineResponse

    def isResponseTruncated(self, completion, funcOrStructName):
        finishReason = completion.choices[0].finish_reason
        self.logger.debug("Finish reason for function/struct %s: %s", funcOrStructName, finishReason)
        return finishReason == "length"

    def getFingerPrint(self):
        self.logger.debug("Sending fingerprint request.")
        completion = self.client.chat.completions.create(
            model=self.model,
            messages=[
                {"role": "user", "content": "Hello, my favorite LLM!"}], 
            max_tokens = self.maxCompletionTokens,
            temperature = 0.0,
            top_p = 0.1,
            seed = 1000) # keeping seed same is supposed to improve determinism
        return (completion.model, completion.system_fingerprint)



    def getResponse(self, request):
        self.logger.debug("Sending request: %s", request)
        completion = self.client.chat.completions.create(
            model=self.model,
            messages=[
                {"role": "system", "content": self.systemPrompt},
                {"role": "user", "content": request}], 
            max_tokens = self.maxCompletionTokens,
            temperature = 0.0,
            top_p = 0.1,
            seed = 1000) # keeping seed same is supposed to improve determinism
        self.logger.debug("Raw response:")
        self.logger.debug(completion)
        response = completion.choices[0].message.content
        # This is OpenAI specific
        # Try to remove the ```rust at the first line and ``` at the last line that I think indicates formatting (markdown?)
        response = self.extractRustCode(response)
        """
        responseLines = response.split("\n")
        if "rust" in responseLines[0]:
            responseLines = responseLines[1:]
        if "```" in responseLines[-1]:
            responseLines = responseLines[:-1]
        response = "\n".join(responseLines)
        """
        return (completion, response)

    def send(self, funcOrStructName, request): 
        (completion, response) = self.getResponse(request)
        # self.logger.debug("response = %s", completion)

        # We might have to do continuation and chaining
        # Note that the context window is different from the maximum
        # number of output tokens GPT can return at one go
        # The context window, for e.g., is 16K for GPT-3.5, but maximum 
        # number of completion tokens is 4K.
        # So it might still have the input in its context, when
        # it truncated its output
        chainedResponse = response

        # Keep on telling it to continue till the response is no
        # longer truncated
        while self.isResponseTruncated(completion, funcOrStructName):
            """
            continuationPrompt = response.split()[0-CONTINUATION_PROMPT_LEN:]
            continuationPrompt = ' '.join(continuationPrompt)
            """
            continuationPrompt = "continue"
            (completion, response) = self.getResponse(continuationPrompt)
            chainedResponse = chainedResponse + response
        return chainedResponse

    def countTokens(self, line):
        try:
            tokenizer = tiktoken.get_encoding(tiktoken.encoding_name_for_model(self.model))
        except:
            tokenizer = tiktoken.get_encoding(tiktoken.encoding_name_for_model(GPT3_MODEL))

        tokens = tokenizer.encode(line)
        return len(tokens)
    
    def chunkAndSend(self, funcOrStructName, request):
        totalTokens = self.countTokens(request)
        fullResponse = ""
        numChunks = 1
        if totalTokens > self.requestTokenLimit:
            lines = request.split("\n")
            # Get the next chunk
            nextLineIndex = 0
            while nextLineIndex < len(lines):
                # Build a chunk
                numTokensSoFar = 0
                chunk = ""
                # Keep consuming the next line as long as consuming the next line wouldn't go over the limit
                nextLineTokenCount = self.countTokens(lines[nextLineIndex])
                while numTokensSoFar + nextLineTokenCount < self.requestTokenLimit and nextLineIndex < len(lines):
                    chunk = chunk + '\n' + lines[nextLineIndex]
                    nextLineIndex = nextLineIndex + 1
                    numTokensSoFar = numTokensSoFar + nextLineTokenCount
                # We've built a chunk! Let's send it
                response = self.send(funcOrStructName, chunk)
                fullResponse = fullResponse + response
                numChunks = numChunks + 1
        else:
            fullResponse = self.send(funcOrStructName, request)
        self.logger.info("Sent request in %d chunks", numChunks)
        return fullResponse

    def cleanCode(self, code):
        # remove identical duplicate structs
        structPattern = r"(struct\s+\w+\s*\{[^}]*\})"
        # Find all struct definitions
        structs = re.findall(structPattern, code, re.DOTALL)
    
        # Track unique struct definitions
        unique_structs = []
        seen_structs = set()
        duplicate_struct_bodies = set()
    
        # Keep only unique structs
        for struct in structs:
            print("struct: " + struct)
            struct_name = re.search(r"struct\s+([A-Za-z_]\w*)", struct).group(1)
            print("name: " + struct_name)
            if struct_name in seen_structs:
                duplicate_struct_bodies.add(struct)
            seen_structs.add(struct_name)

        tempCode = code
        for duplicate_struct_body in duplicate_struct_bodies:
            tempCode = code.replace(duplicate_struct_body, "")

        for duplicate_struct_body in duplicate_struct_bodies:
            tempCode = tempCode + "\n" + duplicate_struct_body

        return tempCode
    

    def compile(self, codeSnippet):
        isBinary = False
        if "fn main(" in codeSnippet:
            emitBitcodeCmd = "cat << EOF | rustc --cap-lints=allow --emit=llvm-bc -o temp.bc - \n" + codeSnippet + "\nEOF"
        else:
            emitBitcodeCmd = "cat << EOF | rustc --cap-lints=allow --emit=llvm-bc --crate-type=lib -o temp.bc - \n" + codeSnippet + "\nEOF"
        self.logger.debug("Checking translation compiles: command %s", emitBitcodeCmd)
        result = subprocess.run(emitBitcodeCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        if result.returncode != 0:
            return (False, result.stderr)
        else:
            return (True, "")
 
    def extractError(self, errStr):
        lines = errStr.split("\n")
        if len(lines) > 20:
            extractedErr = "\n".join(lines[0:20])
        else:
            extractedErr = errStr
        self.logger.debug("Full compilation error: " + errStr)
        return extractedErr

    def preTranslateComplexStructs(self):
        if self.translatorMode not in [TranslatorModes.CF_STRUCT_REPLAY, TranslatorModes.CF_STRUCT_FN_REPLAY, TranslatorModes.CF_SINGLE_REQUEST_MERGE]:
            return
        for structName in FunctionAndDependencies.structsWithUsageInfoMap:
            structWithUsageInfo = FunctionAndDependencies.structsWithUsageInfoMap[structName]
            trialCount = 0
            err = ""
            while True:
                request = "Please translate the struct in " + self.srcLang + " to " + self.dstLang + ". Please try to use safe and idiomatic Rust. After the struct definition, I will provide some sample uses of the struct enclosed in /* and */. Please consider them when translating. Reply only with the Rust code, no English words needed. Please do NOT add a main function.\n"
                request = request + "\n".join(structWithUsageInfo.cCode)
                request = request + "/*\n"
                for usage in structWithUsageInfo.usageList:
                    request = request + usage + "\n"
                request = request + "*/\n"
                if len(err):
                    request = request + "Previous translation gave error \n" + err
                result = self.chunkAndSend(structName, request)
                trialCount = trialCount + 1
                # self.logger.debug("Translated struct \n: %s", result)
                (successFlag, err) = self.compile(self.cleanCode(result))
                # We pray this will never fail
                structWithUsageInfo.rustCode = result
                if successFlag or trialCount > 5:
                    break
                
    def compileWithFeedback(self, funcName, funcDepsObj):
        rustTranslatedStructs = ""
        prompt = "Translate " + self.srcLang + " to " + self.dstLang + ". If the C source code does not have a main function, please do not add a main function. If the C source code does not have a called function defined, please do NOT add a dummy definition. Translate ONLY the provided function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"

        exitNow = False
        rustTranslatedStructs = ""
        rustTranslatedStructPrompt = ""
        for structName in FunctionAndDependencies.structsWithUsageInfoMap:
            if structName in funcDepsObj.structsWithUsageInfo: 
                exitNow = True
                structWithUsageInfo = FunctionAndDependencies.structsWithUsageInfoMap[structName]
                # This function uses it, so record its rust translation
                # We will add it to the request later
                if len(rustTranslatedStructs) == 0:
                    rustTranslatedStructPrompt = "Please use the following Rust translations of struct definitions enclosed in /* Rust struct definitions ... */. Please include the original struct translation in your response. \n"
                rustTranslatedStructs = rustTranslatedStructs + structWithUsageInfo.rustCode + "\n"
                # self.logger.info("Rust translated structs: %s", rustTranslatedStructs)

                # Remove the definition of this struct from the 
                # function's C source code
                funcDepsObj.typeDeclDefCodeLines = funcDepsObj.typeDeclDefCodeLines.replace("\n".join(structWithUsageInfo.cCode), "")


        funcSrc = funcDepsObj.typeDeclDefCodeLines + "\n" + funcDepsObj.funcCodeLines
        if len(rustTranslatedStructs) > 0:
            rustTranslatedStructs = rustTranslatedStructs + "*/\n"

        # self.logger.debug("Rust translated struct: %s", rustTranslatedStructs)
        # self.logger.debug("Function code after removing already-translated structs: %s", funcSrc)


        previouslyTranslatedFunctions = ""
        previouslyTranslatedPrompt = ""
        if len(funcDepsObj.previouslyTranslatedFunctions) != 0:
            previouslyTranslatedPrompt = "Please use the following previously translated Rust functions, included in /*// and //*/ for context. Please DO NOT include these already translated functions in your response.\n"
        # Now we enter the compile + feedback loop
        (successFlag, result) = self.compileAndRetryLoop(funcName, prompt, rustTranslatedStructPrompt, rustTranslatedStructs, previouslyTranslatedPrompt, funcDepsObj.previouslyTranslatedFunctions, funcSrc)
        
        return (successFlag, result)

    def compileAndRetryLoop(self, funcName, prompt, translatedStructPrompt, translatedStructs, translatedFuncPrompt, translatedFuncs, funcSrc):
        
        request = prompt + "\n" + funcSrc + "\n";
        if len(translatedStructs) > 0:
            request = request + "\n" + translatedStructPrompt + "/*\n" + translatedStructs + "\n*/\n"
        if len(translatedFuncs) > 0:
            request = request + "\n" + translatedFuncPrompt + "/*// \n" + translatedFuncs + "/*//\n";
        result = self.chunkAndSend(funcName, request)
        (successFlag, err) = self.compile(self.cleanCode(result + "\n" + translatedFuncs))
        if "extern \"C\"" in result:
            successFlag = False
        if "fn " not in result:
            successFlag = False
        attempts = 0
        while not successFlag and attempts < COMPILATION_RETRIES:
            self.logger.info("Trying to recompile translated function %s, attempt # %d", funcName, attempts + 1)
            feedback = ""
            # These checks lead to colliding translations
            """
            if "fn " not in result:
                feedback = "Please translate all provided struct definitions and functions completely. The original function was "
            if "extern \"C\"" in result:
                feedback = "Please avoid using extern C and translate those functions to Rust too.\n The original function was "
            else:
            """
            errorStr = self.extractError(err)
            # Hack! We should probably use the messages API for both 
            if "claude" in self.model:
                feedback = "I got compilation error. If the C source code does not have a main function, please do not add a main function. If the C source code does not have a called function defined, please do NOT add a dummy definition. Translate ONLY the provided function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"

            else:
                feedback = "I got compilation error.\n" + str(errorStr) + "\n The original function was "
            request = feedback + "\n" + funcSrc + "\n"
            if len(translatedStructs) > 0:
                request = request + "\n" + translatedStructPrompt + "/*\n" + translatedStructs + "\n*/\n"
 
            if len(translatedFuncs) > 0:
                request = request + "\n" + translatedFuncPrompt + "/*// \n" + translatedFuncs + "/*//\n";

            result = self.chunkAndSend(funcName, request)
            (successFlag, err) = self.compile(self.cleanCode(result + "\n" + translatedFuncs))
            """
            if "extern \"C\"" in result:
                successFlag = False
            if "fn " not in result:
                successFlag = False
            """
            attempts = attempts + 1
        if attempts != 0:
            self.logger.debug("After %d retranslation attempts result: %s", attempts, result)

        return (successFlag, result)

    def getUniqueCode(self, visitor):
        """Generate cleaned C code from unique definitions."""
        code = []
        
        # Rebuild structs
        for struct_name, struct_node in visitor.structs.items():
            code.append(f"/* Struct {struct_name} */")
            code.append(struct_node.show())  # 'show' method prints the AST
    
        # Rebuild typedefs
        for typedef_name, typedef_node in visitor.typedefs.items():
            code.append(f"/* Typedef {typedef_name} */")
            code.append(typedef_node.show())
    
        # Rebuild functions
        for func_name, func_node in visitor.functions.items():
            code.append(f"/* Function {func_name} */")
            code.append(func_node.show())
    
        return "\n".join(code)


    def mergeFuncDepsObjects(self, funcsMap):
        mergedFuncDepObj = FunctionAndDependencies("merged")
        for funcSym in funcsMap:
            funcObj = funcsMap[funcSym]
            mergedFuncDepObj.funcCodeLines = mergedFuncDepObj.funcCodeLines + "\n\n" + funcObj.funcCodeLines
            mergedFuncDepObj.typeDeclDefCodeLines = mergedFuncDepObj.typeDeclDefCodeLines + "\n" + funcObj.typeDeclDefCodeLines
            mergedFuncDepObj.structsWithUsageInfo.update(funcObj.structsWithUsageInfo)


		# Hack to remove duplicates in the header content
        with open("./merged_file.c", 'w') as outFile:
            outFile.write(mergedFuncDepObj.typeDeclDefCodeLines)

        # duplicate-struct-remover test_dummy.c
        dupStructRemoverCmd = "duplicate-struct-remover ./merged_file.c"
        result = subprocess.run(dupStructRemoverCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        if result.returncode != 0:
            self.logger.warning("Failed to run command %s, exiting.", dupStructRemoverCmd)

        mergedFuncDepObj.typeDeclDefCodeLines = result.stdout

        # self.logger.debug("Merged func dep obj content:\n %s \n %s", mergedFuncDepObj.typeDeclDefCodeLines, mergedFuncDepObj.funcCodeLines)

        headerStatements = mergedFuncDepObj.typeDeclDefCodeLines.split(';')
        uniqueStatements = list(unique_everseen(headerStatements))
        mergedFuncDepObj.typeDeclDefCodeLines = ";".join(uniqueStatements) 
        # self.logger.debug("Merged header information:\n%s", mergedFuncDepObj.typeDeclDefCodeLines)
        # self.logger.debug("Merged source code:\n%s", mergedFuncDepObj.funcCodeLines)
        return mergedFuncDepObj


    def translate(self, funcName, funcDepsObj):
        if self.translatorMode == TranslatorModes.BASIC_CHUNK_CHAIN:
            funcSrc = funcDepsObj.typeDeclDefCodeLines + "\n" + funcDepsObj.funcCodeLines
            request = "Translate " + self.srcLang + " to " + self.dstLang + ". If the C source code does not have a main function, please do not add a main function. If the C source code does not have a called function defined, please do NOT add a dummy definition. Translate ONLY the provided function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"
            result = self.chunkAndSend(funcName, request)
        elif self.translatorMode == TranslatorModes.COMPILATION_FEEDBACK: 
            funcSrc = funcDepsObj.typeDeclDefCodeLines + "\n" + funcDepsObj.funcCodeLines
            prompt = "Translate " + self.srcLang + " to " + self.dstLang + ". If the C source code does not have a main function, please do not add a main function. If the C source code does not have a called function defined, please do NOT add a dummy definition. Translate ONLY the provided function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"
            (successFlag, result) = self.compileAndRetryLoop(funcName, prompt,"",  "", "", "", funcSrc)
        elif self.translatorMode == TranslatorModes.CF_STRUCT_REPLAY:
            (successFlag, result) = self.compileWithFeedback(funcName, funcDepsObj)
        
        return result

    def translateAndCreateRustFiles(self, funcs, key, individualFuncPath):
        # funcs is a dict of funcName: FunctionAndDependencies object
        try:
            translatedResult = self.translate(key, funcs[key])
            self.logger.debug("Translating function: " + key)
            self.logger.debug(translatedResult)
            rs_path = os.path.join(individualFuncPath, f"{key}.rs")
            with open(rs_path, "w") as rs_file:
                rs_file.write(translatedResult)
            self.logger.info("Translation for function %s generated", key)
        except Exception as e:
            traceback_str = traceback.format_exc()
            self.logger.debug(f"Exception: {e}\nTraceback:\n{traceback_str}")
            self.logger.warn("Function %s failed to translate", key)


    def translateAll(self, funcMap, individualFuncPath, multiThreading):
        self.preTranslateComplexStructs()
        # If the translatorMode is per-function then
        if self.translatorMode in [TranslatorModes.BASIC_CHUNK_CHAIN, TranslatorModes.COMPILATION_FEEDBACK, TranslatorModes.CF_STRUCT_REPLAY]:
            if multiThreading:
                # launch 10 threads at a time
                threads = []
                for i, key in enumerate(funcMap):
                    t = threading.Thread(target=self.translateAndCreateRustFiles, args=(funcMap, key, individualFuncPath))
                    threads.append(t)
                    if len(threads) == MAX_THREADS:
                        for thread in threads:
                            thread.start()
                        for thread in threads:
                            thread.join()
                        threads = []
                for thread in threads:
                    thread.start()
                for thread in threads:
                    thread.join()
                    threads = []
    
            else:
                # Do sequential stuff
                for i, key in enumerate(funcMap):
                    self.translateAndCreateRustFiles(funcMap, key, individualFuncPath)
        else:
            if self.translatorMode == TranslatorModes.CF_SINGLE_REQUEST_MERGE:
                mergedFuncDepsObj = self.mergeFuncDepsObjects(funcMap)
                (successFlag, translatedResult) = self.compileWithFeedback("merged_files", mergedFuncDepsObj)
                self.logger.debug("Translated entire library:")
                self.logger.debug(translatedResult)
                rs_path = os.path.join(individualFuncPath, "merged_funcs.rs")
            elif self.translatorMode == TranslatorModes.CF_STRUCT_FN_REPLAY:
                # Get the merged header
                mergedHeader = self.mergeFuncDepsObjects(funcMap).typeDeclDefCodeLines
                previouslyTranslatedFunctions = ""
                """
                Approach:
                0. Initialize context = null
                1. Process each function one by one
                    - If it compiles along with the context
                    - If it does, add it to the context
                """
                for funcSym in funcMap:
                    funcDepsObj = funcMap[funcSym]
                    funcDepsObj.previouslyTranslatedFunctions = previouslyTranslatedFunctions
                    (successFlag, translatedResult) = self.compileWithFeedback(funcSym, funcDepsObj)
                    if successFlag:
                        self.logger.warn("Successfully added %s to the merged file.", funcSym)
                        rs_path = os.path.join(individualFuncPath, "merged_funcs.rs")
                        with open(rs_path, "w") as rs_file:
                            rs_file.write(previouslyTranslatedFunctions + "\n" + translatedResult)
                        previouslyTranslatedFunctions = previouslyTranslatedFunctions + "\n" + translatedResult
                        self.logger.info("Updated translation for merged_funcs.rs")
                    else:
                        self.logger.warn("Failed to add %s to the merged file.", funcSym)
                        rs_path = os.path.join(individualFuncPath, f"{funcSym}.rs")
                        with open(rs_path, "w") as rs_file:
                            rs_file.write(translatedResult)


class Gpt3Translator(Translator):
    def __init__(self, logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode):
        super().__init__(logger, "", apiKey, GPT3_CTX_WINDOW_LEN, GPT3_MAX_COMPLETION_TOKENS, 
                srcLang, dstLang, GPT3_MODEL, systemPrompt, translatorMode) 

class Gpt4Translator(Translator):
    def __init__(self, logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode):
        super().__init__(logger, "", apiKey, GPT4_CTX_WINDOW_LEN, GPT4_MAX_COMPLETION_TOKENS, 
                srcLang, dstLang, GPT4_MODEL, systemPrompt, translatorMode) 

class FineTunedGPT3Translator(Translator):
    def __init__(self, logger, apiKey, srcLang, dstLang, modelName, systemPrompt, translatorMode):
        super().__init__(logger, "", apiKey, GPT3_CTX_WINDOW_LEN, GPT3_MAX_COMPLETION_TOKENS, 
                srcLang, dstLang, modelName, systemPrompt, translatorMode) 

class Claude_3_5_Translator(Translator):
    def __init__(self, logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode):
        self.logger = logger
        self.baseUrl = ""
        self.apiKey = apiKey
        self.ctxWindow = CLAUDE_CTX_WINDOW_LEN
        self.maxCompletionTokens = CLAUDE_MAX_COMPLETION_TOKENS
        self.requestTokenLimit = self.ctxWindow - self.maxCompletionTokens # Should this only be the ctxWindow?
        self.srcLang = srcLang
        self.dstLang = dstLang
        self.model = "claude-3-5-sonnet-20240620"
        self.systemPrompt = systemPrompt
        self.translatorMode = translatorMode
        # If we're using LLAMA then we need to provide self.baseUrl
        # self.client = OpenAI(base_url=self.baseUrl, api_key=self.apiKey)
        self.client = anthropic.Anthropic(api_key=self.apiKey)

    def getFingerPrint(self):
        self.logger.debug("Cannot fingerprint Anthropic models.")
        return ("", "")

    def isResponseTruncated(self, completion, funcOrStructName):
        finishReason = completion.stop_reason
        self.logger.debug("Finish reason for function/struct %s: %s", funcOrStructName, finishReason)
        return finishReason == "length"


    def getResponse(self, request):
        self.logger.debug("Sending request: %s", request)
        completion = self.client.messages.create(
            model=self.model,
            system=self.systemPrompt,
            messages=[
                {
                    "role": "user", 
                    "content": [
                        {
                            "type": "text",
                            "text": request
                        }
                    ]
                }
            ], 
            max_tokens = self.maxCompletionTokens,
            temperature = 0.0,
            top_p = 0.1) # Anthropic doesn't support seed
        response = self.extractRustCode(completion.content[0].text)
        self.logger.debug("Rust response: %s", response)
        return (completion, response)
