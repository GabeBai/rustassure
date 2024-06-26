import os
import logging
import sys
import re
import subprocess

# from functionAndDeps import FunctionAndDependencies

def removeEmptyLines(filePath):
    with open(filePath, 'r') as file:
        lines = file.readlines()
    with open(filePath, 'w') as file:
        for line in lines:
            strippedLine = line.strip()
            if len(strippedLine) > 0: 
                file.write(line)

class Symbol:
    def __init__(self, sym, span):
        self.sym = sym
        self.span = span

class TypedefFilter:
    def __init__(self, logger):
        self.logger = logger

    def filterUnusedTypedefs(self, srcFile):
        cmd = "unused-typedef-extractor " + srcFile

        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        # Try to run it once again if there's an error. For some reason, the first time many of the files in uthash get SIGBUS error

        retryCount = 0
        while result.returncode != 0 and retryCount < 10:
            self.logger.warn("Retrying %s", cmd)
            result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            retryCount = retryCount + 1

        if result.returncode != 0:
            self.logger.info("Succeeded %s", cmd)

        cmd = f"sed -i 's/__extension__//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        # Remove the lines that have nothing but ;
        cmd = "empty-decl-remover " + srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        removeEmptyLines(srcFile)
