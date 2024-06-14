import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess
import traceback
import tiktoken

from enum import Enum
from functionAndDeps import FunctionAndDependencies

class TranslatorModes(Enum):
    BASIC_CHUNK_CHAIN = 0 
    """
    Take the entire file generated for a single function,
    all the typedefs, 
    declarations, definitions, and chunk them 
    to fit the window and chain the responses
    """
    SPACED_REPITITION = 1 
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
    REDUCED_WITH_SREP = 2
    REDUCED_SREP_CALLERS = 3
    REDUCED_SREP_CALLEES = 4
    REDUCED_SREP_CALLERS_CALLEES = 5

class Translator:
    """
    https://platform.openai.com/docs/guides/text-generation/chat-completions-api
    """
    def __init__(self, logger, baseUrl, apiKey, ctxWindow, maxCompletionTokens,
            srcLang, dstLang,
            model, systemPrompt):
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
        # If we're using LLAMA then we need to provide self.baseUrl
        # self.client = OpenAI(base_url=self.baseUrl, api_key=self.apiKey)
        self.client = OpenAI(api_key=self.apiKey)

    # utility function to check if a request fits in both the context window
    # and the max output token count (actually, just the max output token count
    # because that's always smaller than the context window (I think?)
    def isFitInLimits(self, request):
        tokens = self.countTokens(funcMap[func])
        return (len(tokens) < self.requestTokenLimit and len(tokens) < self.maxCompletionTokens)

    def preanalyze(self, funcMap, srcPath):
        analysisFilePath = os.path.join(srcPath, "individual-funcs", "analysis.log")
        totalFuncs = len(funcMap) 

        cumulResultMatrix = {}
        cumulResultMatrix['full'] = [0, 0]
        cumulResultMatrix['func'] = [0, 0]
        cumulResultMatrix['decl'] = [0, 0]

        with open(analysisFilePath, 'w') as f:
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
            f.write("Function only -> %d fits in request limit, % fits in response limit\n" % (cumulResultMatrix['func'][0], cumulResultMatrix['func'][1]))
            f.write("Decls only -> %d fits in request limit, % fits in response limit\n" % (cumulResultMatrix['decl'][0], cumulResultMatrix['decl'][1]))



    def extractRustCode(self, multilineResponse):
        pattern = re.compile(r"```rust\n(.*?)```", re.DOTALL)
        matches = pattern.findall(multilineResponse)
        return "\n".join(matches)

    def isResponseTruncated(self, completion, funcName):
        finishReason = completion.choices[0].finish_reason
        self.logger.debug("Finish reason for function %s: %s", funcName, finishReason)
        return finishReason == "length"

    def getResponse(self, request):
        # self.logger.debug("Sending request: %s", request)
        completion = self.client.chat.completions.create(
            model=self.model,
            messages=[
                {"role": "system", "content": self.systemPrompt},
                {"role": "user", "content": request}], 
            max_tokens = self.maxCompletionTokens,
            temperature = 0.2,
            top_p = 0.1)
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

    def send(self, funcName, request): 
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
        while self.isResponseTruncated(completion, funcName):
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
    
    def chunkAndSend(self, funcName, request):
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
                response = self.send(funcName, chunk)
                fullResponse = fullResponse + response
                numChunks = numChunks + 1
        else:
            fullResponse = self.send(funcName, request)
        self.logger.info("Sent request in %d chunks", numChunks)
        return fullResponse

    def translate(self, funcName, funcDepsObj, translatorMode):
        if translatorMode == TranslatorModes.BASIC_CHUNK_CHAIN:
            funcSrc = funcDepsObj.typeDeclDefCodeLines + "\n" + funcDepsObj.funcCodeLines
            self.logger.info("Translating: %s",funcSrc)
            request = "Translate " + self.srcLang + " to " + self.dstLang + ". The C source code might be chunked across different requests. Please don't end the function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"  + funcSrc
            result = self.chunkAndSend(funcName, request)
        elif translatorMode == Translatormodes.SPACED_REPITITION:
            pass
        return result
