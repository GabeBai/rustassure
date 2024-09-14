import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess
import traceback
import tiktoken

from functionAndDeps import FunctionAndDependencies
from enum import Enum
from functionAndDeps import FunctionAndDependencies

GPT3_MODEL="gpt-3.5-turbo"
GPT3_CTX_WINDOW_LEN=16*1024
GPT3_MAX_COMPLETION_TOKENS=4096 # This is the max value you can put for max_tokens: the max size of a response, https://platform.openai.com/docs/models/gpt-4-turbo-and-gpt-4 and search for output tokens

GPT4_MODEL="gpt-4o"
GPT4_CTX_WINDOW_LEN=128*1024
GPT4_MAX_COMPLETION_TOKENS=4096 

COMPILATION_RETRIES=10

class TranslatorModes(Enum):
    """
    Do basic chunking and chaining of requests
    """
    BASIC_CHUNK_CHAIN = 0
    """ 
    If the compilation fails, then send the compilation error
    """
    COMPILATION_FEEDBACK = 1
    """
    Special handling for structs with void*/char* pointers
    """
    COMPILATION_FEEDBACK_WITH_STRUCT_USAGE = 2
    """
    Take the entire file generated for a single function,
    all the typedefs, 
    declarations, definitions, and chunk them 
    to fit the window and chain the responses
    """
    SPACED_REPITITION = 3
    """
    First, feed the typedefs, decls, defns and 
    translate them. Then, send that information 
    again to ensure its in the context window, 
    but don't ask it to translate it (or the 
    translated content stay in the context window
    ?). Then, send the function. 
    Assumes that both the typedefs, etc. and the 
    function fit in the response limit
    """
    REDUCED_WITH_SREP = 4
    REDUCED_SREP_CALLERS = 5
    REDUCED_SREP_CALLEES = 6
    REDUCED_SREP_CALLERS_CALLEES = 7

class Translator:
    """
    https://platform.openai.com/docs/guides/text-generation/chat-completions-api
    """
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
        pattern = re.compile(r"```rust\n(.*?)```", re.DOTALL)
        matches = pattern.findall(multilineResponse)
        if len(matches) > 0:
            return "\n".join(matches)
        else:
            return multilineResponse

    def isResponseTruncated(self, completion, funcOrStructName):
        finishReason = completion.choices[0].finish_reason
        self.logger.debug("Finish reason for function/struct %s: %s", funcOrStructName, finishReason)
        return finishReason == "length"

    def getResponse(self, request):
        self.logger.debug("Sending request: %s", request)
        completion = self.client.chat.completions.create(
            model=self.model,
            messages=[
                {"role": "system", "content": self.systemPrompt},
                {"role": "user", "content": request}], 
            max_tokens = self.maxCompletionTokens,
            temperature = 0.2,
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
        tokenizer = tiktoken.get_encoding(tiktoken.encoding_name_for_model(self.model))
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
        self.logger.debug("Extracted error: " + extractedErr)
        return extractedErr

    def preTranslateComplexStructs(self):
        if self.translatorMode != TranslatorModes.COMPILATION_FEEDBACK_WITH_STRUCT_USAGE:
            return
        for structName in FunctionAndDependencies.structsWithUsageInfoMap:
            structWithUsageInfo = FunctionAndDependencies.structsWithUsageInfoMap[structName]
            trialCount = 0
            err = ""
            while True:
                request = "Please translate the struct in " + self.srcLang + " to " + self.dstLang + ". Please try to use safe and idiomatic Rust. After the struct definition, I will provide some sample uses of the struct enclosed in /* and */. Please consider them when translating. Reply only with the Rust code, no English words needed.\n"
                request = request + "\n".join(structWithUsageInfo.cCode)
                request = request + "/*\n"
                for usage in structWithUsageInfo.usageList:
                    request = request + usage + "\n"
                request = request + "*/\n"
                if len(err):
                    request = request + "Previous translation gave error \n" + err
                result = self.chunkAndSend(structName, request)
                trialCount = trialCount + 1
                self.logger.info("Translated struct \n: %s", result)
                (successFlag, err) = self.compile(result)
                # We pray this will never fail
                structWithUsageInfo.rustCode = result
                if successFlag or trialCount > 5:
                    break
                
    def compileWithFeedbackAndStructUsage(self, funcName, funcDepsObj):
        rustTranslatedStructs = ""
        prompt = "Translate " + self.srcLang + " to " + self.dstLang + ". The C source code might be chunked across different requests. Please don't end the function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"
        funcSrc = funcDepsObj.typeDeclDefCodeLines + "\n" + funcDepsObj.funcCodeLines

        exitNow = False
        for structName in FunctionAndDependencies.structsWithUsageInfoMap:
            if structName in funcDepsObj.structsWithUsageInfo: 
                exitNow = True
                structWithUsageInfo = FunctionAndDependencies.structsWithUsageInfoMap[structName]
                # This function uses it, so record its rust translation
                # We will add it to the request later
                if len(rustTranslatedStructs) == 0:
                    rustTranslatedStructs = "Please use the following Rust translations of struct definitions enclosed in /* Rust struct definitions ... */ /*\n"
                rustTranslatedStructs = rustTranslatedStructs + structWithUsageInfo.rustCode + "\n"
                self.logger.info("Rust translated structs: %s", rustTranslatedStructs)

                # Remove the definition of this struct from the 
                # function's C source code
                funcDepsObj.typeDeclDefCodeLines = funcDepsObj.typeDeclDefCodeLines.replace("\n".join(structWithUsageInfo.cCode), "")

        if len(rustTranslatedStructs) > 0:
            rustTranslatedStructs = rustTranslatedStructs + "*/\n"

        self.logger.debug("Rust translated struct: %s", rustTranslatedStructs)
        self.logger.debug("Function code after removing already-translated structs: %s", funcSrc)

        # Now we enter the compile + feedback loop
        result = self.compileAndRetryLoop(funcName, prompt, rustTranslatedStructs, funcSrc)
        """
        if exitNow:
            sys.exit(-1)
        """
        return result

    def compileAndRetryLoop(self, funcName, prompt, additionalContext, funcSrc):
        """
        prompt: contains the initial prompt "Translate C to Rust... " 
        additionalContext: contains any extra information such as already translated structs, etc.
        funcSrc: the source code of the function and all headers expanded
        """
        request = prompt + "\n" + funcSrc + "\n" + additionalContext
        if len(additionalContext) > 0:
            self.logger.info("The request with additional context :\n %s", request)
        result = self.chunkAndSend(funcName, request)
        (successFlag, err) = self.compile(result)
        if "extern \"C\"" in result:
            successFlag = False
        if "fn " not in result:
            successFlag = False
        attempts = 0
        while not successFlag and attempts < COMPILATION_RETRIES:
            self.logger.info("Trying to recompile translated function %s, %d time", funcName, attempts)
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
            feedback = "I got compilation error.\n" + str(errorStr) + "\n The original function was "
            request = feedback + funcSrc + additionalContext
            result = self.chunkAndSend(funcName, request)
            (successFlag, err) = self.compile(result)
            if "extern \"C\"" in result:
                successFlag = False
            if "fn " not in result:
                successFlag = False
            attempts = attempts + 1
        if attempts != 0:
            self.logger.debug("After %d retranslation attempts result: %s", attempts, result)

        return result

    def translate(self, funcName, funcDepsObj):
        if self.translatorMode == TranslatorModes.BASIC_CHUNK_CHAIN:
            funcSrc = funcDepsObj.typeDeclDefCodeLines + "\n" + funcDepsObj.funcCodeLines
            request = "Please translate " + self.srcLang + " to " + self.dstLang + ". The C source code might be chunked across different requests. Please don't end the function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"  + funcSrc
            result = self.chunkAndSend(funcName, request)
        elif self.translatorMode == TranslatorModes.SPACED_REPITITION:
            pass
        elif self.translatorMode == TranslatorModes.COMPILATION_FEEDBACK_WITH_STRUCT_USAGE:
            result = self.compileWithFeedbackAndStructUsage(funcName, funcDepsObj)
        elif self.translatorMode == TranslatorModes.COMPILATION_FEEDBACK: 
            funcSrc = funcDepsObj.typeDeclDefCodeLines + "\n" + funcDepsObj.funcCodeLines
            prompt = "Translate " + self.srcLang + " to " + self.dstLang + ". The C source code might be chunked across different requests. Please don't end the function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"
            result = self.compileAndRetryLoop(funcName, prompt, "", funcSrc)
        return result

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
