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
    # Create a logger
    logger = logging.getLogger('translationvalidator_logger')
    logger.setLevel(logging.DEBUG)
	
	# Create file handler which logs even debug messages
    fh = logging.FileHandler(logPath)
    fh.setLevel(logging.DEBUG)
	
	# Create console handler with a higher log level
    ch = logging.StreamHandler()
    ch.setLevel(logging.DEBUG)

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

def process_func(translator, funcs, key, logger, individualFuncPath):
    result = translator.translate(funcs[key])
    rs_path = os.path.join(individualFuncPath, f"{key}.rs")
    c_path = os.path.join(individualFuncPath, f"{key}.c")
    logger

    with open(rs_path, "w") as rs_file:
        rs_file.write(result)
    with open(c_path, "w") as c_file:
        c_file.write(funcs[key])

def processCodebase(codebasePath, execPath):
    logger = getLogger("./openai.log")
    translator = createTranslator(logger) 
    # result = translator.translate("int main(void) { return 0; }")
    # print(result)
    funcs = getFunctions(logger, execPath, codebasePath)
    logger.info("Extracted %d functions", len(funcs))
    individualFuncPath = codebasePath+"/individual-funcs/"
    try:
        os.mkdir(individualFuncPath)
    except:
        logger.debug("Individual functions directory already exists")
    threads = []
    for key in funcs:
        process_func(translator, funcs, key, logger, individualFuncPath)

if __name__ == "__main__":
    processCodebase("./inputs-complex/zlib-1.3.1/", "./inputs-complex/zlib-1.3.1/libz.so")
