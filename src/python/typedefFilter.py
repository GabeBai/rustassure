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
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        cmd = f"sed -i '' 's/__extension__//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    
"""
    def filterUnusedTypedefs(self, srcFile, functionAndDepsObj):
        cmd = ["unused-typedef-extractor", srcFile]
        unusedTypeDefs = []
        unusedFunctionDecls = []
        process = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

        for line in process.stdout:
            if line.startswith("Typedef"):
                # Token <sym> span
                tokens = line.split()
                sym = tokens[1].strip()
                span = int(tokens[2].strip())
                unusedTypeDefs.append(Symbol(sym, span))
            elif line.startswith("Function"):
                tokens = line.split()
                sym = tokens[1].strip()
                span = int(tokens[2].strip())
                unusedFunctionDecls.append(Symbol(sym, span))

        # Wait for the process to finish and get the exit code
        process.stdout.close()
        returnCode = process.wait()

        if returnCode != 0:
            self.logger.warn("Failed to extract unused typedefs for %s. Treating everything as used.", srcFile)
        else:
            self.logger.info("Successfully extracted unused typedefs for %s.", srcFile)


        # Split the lines
        usedTypeDeclDefLines = []
        allTypeDeclDefLines = functionAndDepsObj.typeDeclDefCodeLines.split("\n")
        # self.logger.info("Before filtering: %d records", len(allTypeDeclDefLines))
        index = 0
        while index < len(allTypeDeclDefLines):
            typeDeclDefLine = allTypeDeclDefLines[index]
            # self.logger.info("Index = %d", index)
            if "typedef" in typeDeclDefLine:
                # Is it any of the unused typedefs?
                unused = False
                for unusedTypeDef in unusedTypeDefs:
                    if unusedTypeDef.sym in typeDeclDefLine.split() and allTypeDeclDefLines[index + unusedTypeDef.span].endswith(";"):
                        unused = True
                        index = index + unusedTypeDef.span
                        break
                if not unused:
                    usedTypeDeclDefLines.append(typeDeclDefLine)
            elif "extern" in typeDeclDefLine:
                unused = False
                for unusedFuncDecl in unusedFunctionDecls:
                    if unusedFuncDecl.sym in typeDeclDefLine.split() and allTypeDeclDefLines[index + unusedFuncDecl.span].endswith(";"):
                        # self.logger.info("sym = %s, span = %d", unusedFuncDecl.sym, unusedFuncDecl.span)
                        # Deal with multi-line nonsense
                        unused = True
                        index = index + unusedFuncDecl.span
                        # self.logger.info("Filtering %s", typeDeclDefLine)
                        break
                if not unused:
                    usedTypeDeclDefLines.append(typeDeclDefLine)
            else:
                usedTypeDeclDefLines.append(typeDeclDefLine)
            index = index + 1

        functionAndDepsObj.typeDeclDefCodeLines = "\n".join(usedTypeDeclDefLines)
        # self.logger.info("Filtered lines: %s", functionAndDepsObj.typeDeclDefCodeLines)
        # self.logger.info("After filtering: %d records", len(usedTypeDeclDefLines))
"""
