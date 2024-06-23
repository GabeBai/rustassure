import os
import logging
import sys
import re
import subprocess

# from functionAndDeps import FunctionAndDependencies

class Symbol:
    def __init__(self, sym, span):
        self.sym = sym
        self.span = span

class TypedefFilter:
    def __init__(self, logger):
        self.logger = logger


    def filterUnusedTypedefs(self, srcFile):
        cmd = "unused-typedef-extractor " + srcFile
        result = subprocess.run(cmd, shell=True, text=True)
        cmd = f"sed -i '' 's/__extension__//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        cmd = f"awk 'NF' "+srcFile+ " > " + srcFile
    
