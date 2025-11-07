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
        srcFile = os.path.abspath(srcFile)
        cmd = "unused-typedef-extractor " + srcFile # + " 2>/dev/null"

        self.logger.debug("Running: %s", cmd)
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        # Try to run it once again if there's an error. For some reason, the first time many of the files in uthash get SIGBUS error

        retryCount = 0
        if result.returncode != 0 and ("error generated" in result.stderr or "errors generated" in result.stderr):
            self.logger.warn(result.stdout)
            self.logger.warn(result.stderr)
            self.logger.warn("Broke something during removing unused dependencies, but will continue...")

        while result.returncode != 0 and retryCount < 10:
            # self.logger.warn("Retrying command: %s", cmd)
            result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            retryCount = retryCount + 1

        if result.returncode == 0:
            # self.logger.info("Succeeded command: %s", cmd)
            print(f"succesfully run {cmd}")
        else:
            print(f"fail run {cmd}")
            self.logger.info("Failed and bailing command: %s", cmd)

        cmd = f"sed -i 's/__extension__//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        # Remove all static and inline attributes, these attributes result in dead code removal in bitcode
        cmd = f"sed -i 's/\\binline\\b//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        cmd = f"sed -i 's/\\b__inline\\b//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        cmd = f"sed -i 's/\\b__inline__\\b//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        cmd = f"sed -i 's/\\bstatic\\b//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)


        """
        print(cmd)
        print(result.stderr)
        print(result.stdout)
        """

        # Remove the lines that have nothing but ;
        cmd = "empty-decl-remover " + srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        removeEmptyLines(srcFile)
