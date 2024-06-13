import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess
import traceback
import tiktoken


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
        fitsRequestTokenLimit = 0
        fitsResponseTokenLimit = 0
        with open(analysisFilePath, 'w') as f:
            for func in funcMap:
                tokens = self.countTokens(funcMap[func])
                fitsInRequest = False
                fitsInResponse = False
                if tokens < self.requestTokenLimit:
                    fitsRequestTokenLimit = fitsRequestTokenLimit + 1
                    fitsInRequest = True
                if tokens < self.maxCompletionTokens:
                    fitsResponseTokenLimit = fitsResponseTokenLimit + 1
                    fitsInResponse = True
                f.write("%s: %d: %s : %s\n" % (func, tokens, fitsInRequest, fitsInResponse))
            f.write("Of %d total functions, %d fits in the request limit (%d), %d fits in the response limit (%d)" % (totalFuncs, fitsRequestTokenLimit, self.requestTokenLimit, fitsResponseTokenLimit, self.maxCompletionTokens))

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

    def translate(self, funcName, funcSrc):
        # self.logger.debug("Translating: %s",funcSrc)
        request = "Translate " + self.srcLang + " to " + self.dstLang + ". The C source code might be chunked across different requests. Please don't end the function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"  + funcSrc
        result = self.chunkAndSend(funcName, request)
        return result
