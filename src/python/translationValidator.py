import os
import logging
import sys
import glob
from openai import OpenAI
import extractFuncSrcCode as funcExtractor
import re

sys.path.insert(0, './python-utils/')

import util

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

    rootLogger = logging.getLogger("validateTranslation")
    logging.basicConfig(filename=logPath, level=logging.INFO)
    rootLogger.setLevel(logging.INFO)
    return rootLogger

def createTranslator(logger):
    translator = Translator(logger,
            "http://172.31.224.1:12345/v1",
            "lm-studio",
            "C",
            "Rust",
            "TheBloke/CodeLlama-7B-Instruct-GGUF",
            "You are an expert programmer in C and Rust and are an expert in translating C to Rust code. Please focus on correctness and do not add any extra explanation of the result. Return ONLY the translated code")
    return translator

def getFunctions(logger, binPath, srcPath):
    logger.debug("Extracting function bodies for : %s", binPath)
    funcNodes = util.extractExportedFunctionsWithNm(binPath, logger)
    funcs = {}
    # Can likely optimize this
    for funcName in funcNodes:
        for filename in glob.iglob(srcPath + "/*.c", recursive=True):
            line_num = funcExtractor.get_line_number(filename, funcName)
            if line_num > 0:
                code = funcExtractor.process_file(filename, line_num)
                logger.debug("Code: %s\n", code)
                funcs[funcName] = code
    return funcs


if __name__ == "__main__":
    logger = getLogger("./openai.log")
    translator = createTranslator(logger) 
    # result = translator.translate("int main(void) { return 0; }")
    # print(result)
    funcs = getFunctions(logger, "./inputs-complex/zlib-1.3.1/libz.so", "./inputs-complex/zlib-1.3.1/")
    for key in funcs:
        result = translator.translate(funcs[key])
        print(result)
