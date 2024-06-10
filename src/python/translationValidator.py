import os
import logging
from openai import OpenAI


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
        result = completion.choices[0].message 
        return result

def createTranslator(logPath):
    if os.path.exists(logPath):
        os.remove(logPath)

    rootLogger = logging.getLogger("validateTranslation")
    logging.basicConfig(filename=logPath, level=logging.INFO)
    rootLogger.setLevel(logging.INFO)
    translator = Translator(rootLogger,
            "http://172.31.224.1:12345/v1",
            "lm-studio",
            "C",
            "Rust",
            "TheBloke/CodeLlama-7B-Instruct-GGUF",
            "You are an expert programmer in C and Rust and are an expert in translating C to Rust code. Please focus on correctness and do not add any extra explanation of the result. Return ONLY the translated code")
    return translator

if __name__ == "__main__":
   translator = createTranslator("./openai.log") 
   result = translator.translate("int main(void) { return 0; }")
   print(result)
