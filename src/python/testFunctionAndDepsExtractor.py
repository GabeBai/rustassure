import unittest
import os
import logging
import glob

from functionAndDepsExtractor import FunctionAndDepsExtractor

class TestFunctionAndDepsExtractor(unittest.TestCase):
    def getLogger(self, logPath):
        if os.path.exists(logPath):
            os.remove(logPath)
        # Create a logger
        logger = logging.getLogger('test_function_and_deps_extractor_logger')
        logger.setLevel(logging.INFO)
        
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

    def testExtractGlobalTypeUsageDetails(self):
        logger = self.getLogger("./test-function-and-deps.log")
        extractor = FunctionAndDepsExtractor(logger)
        srcPath = "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-3.5-turbo_2024-07-01_21-48-28"
        allFiles = glob.iglob(os.path.join(srcPath, "**/*.i"), recursive=True)
        fileFuncMap = {}

        for filename in allFiles:
            logger.info("TEST: Extracting function bodies for file: %s", filename)
            funcMap = extractor.extractFuncsAndDeps(filename)
            fileFuncMap.update(funcMap)

        extractor.extractGlobalTypeUsageDetails(srcPath, fileFuncMap)

        self.assertTrue(len(fileFuncMap) > 0)

        for funcSym in fileFuncMap:
            functionAndDeps = fileFuncMap[funcSym]
            self.assertTrue(len(functionAndDeps.funcCodeLines) > 1)
            logger.info("TEST: For function: %s", funcSym)
            for usedType in functionAndDeps.typeUsageCodeLinesMap:
                logger.info("TEST: For type: %s", usedType)
                for usage in functionAndDeps.typeUsageCodeLinesMap[usedType]:
                    logger.info("TEST: %s", usage)

if __name__ == '__main__':
    unittest.main()
