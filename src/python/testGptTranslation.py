import unittest
import os
import logging

from gptTranslation import Translator
from functionAndDepsExtractor import FunctionAndDepsExtractor

# Always use GPT-3.5 for tests, and not GPT-4
GPT_MODEL="gpt-3.5-turbo"
CTX_WINDOW_LEN=16*1024
MAX_COMPLETION_TOKENS=4096 # This is the max value you can put for max_tokens: the max size of a response, https://platform.openai.com/docs/models/gpt-4-turbo-and-gpt-4 and search for output tokens

class TestTranslator(unittest.TestCase):
    def getLogger(self, logPath):
        if os.path.exists(logPath):
            os.remove(logPath)
        # Create a logger
        logger = logging.getLogger('test_translator_logger')
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

    def createTranslator(self):
        logger = self.getLogger("./test-translator.log")
        translator = Translator(logger,
                "http://172.31.224.1:12345/v1",
                os.environ.get('OPENAI_KEY'),
                CTX_WINDOW_LEN,
                MAX_COMPLETION_TOKENS, 
                "C",
                "Rust",
                GPT_MODEL,
                "You are an expert programmer in C and Rust and are an expert in translating C to Rust code.")
        return translator

    def testChunkAndSend(self):
        translator = self.createTranslator()
        with open("./test.i") as f:
            testFileContents = f.read()
        response = translator.chunkAndSend("dummy", testFileContents)
        self.assertTrue(len(response)>0 and "fn main" in response )

    def testExtractRustCode(self):
        translator = self.createTranslator()
        response = translator.extractRustCode("""
                This is the Rust code.
                ```rust
                fn main() {
                    println!("Hello world");
                }
                ```
                And then there's this function:
                ```rust
                fn add(a, b) {
                    a + b
                }
                ```
                """)
        self.assertTrue("Rust" not in response and "rust" not in response and "And" not in response)

    """
    def testCountTokens(self):
        translator = self.createTranslator()
    """


if __name__ == '__main__':
    unittest.main()
