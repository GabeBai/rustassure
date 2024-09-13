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

from loggerFactory import getLogger

def replaceStructDef(logger, cSourceCode, structDef):
    pass

def extractStructDefRange(logger, cFileName, structName):
    # Get the start and end line numbers for all structs
    findStructCmd = "ctags --fields=+ne --c-kinds=s -o - --language-force=C " + cFileName
    result = subprocess.run(findStructCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
    # Result is
    # csv_parser      csv_get_buffer_size.i   /^struct csv_parser {$/;"       s       line:13 file:   end:30
    for line in result.stdout.split('\n'):
        tokens = line.split('\t')
        if structName == tokens[0]:
            start = int(tokens[4].split(":")[1])
            if "end:" not in tokens[-1]:
                continue # This is likely some forward declaration
            end = int(tokens[-1].split(":")[1])
            return (start, end)
    logger.warning("Could not extract struct definition range for %s from file %s. Exiting", structName, cFileName)
    sys.exit(-1)


def extractStructDefinition(logger, cFileName, structName):
    (start, end) = extractStructDefRange(logger, cFileName, structName)
    with open(cFileName, 'r') as file:
        lines = file.readlines()
        for i in range(len(lines)):
            lines[i] = lines[i].rstrip() # Remove the newline char
        extractedDefinition = lines[start-1:end] # ctags index is 1-based
        return (start-1, end, extractedDefinition) # ctags index is 1-based
    
if __name__ == "__main__":
    loggerFileName = "./util_tester.log"
    logger = getLogger(loggerFileName)
    extractStructDefinition(logger, "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-3.5-turbo_2024-09-12_21-44-58__complete/csv_get_buffer_size.i", "csv_parser")
