import os
import logging
import sys
import re
import subprocess

from functionAndDeps import FunctionAndDependencies

class TypedefFilter:
    def __init__(self, logger):
        self.logger = logger

    def filterUnusedTypedefs(self, srcFile, functionAndDepsObj):
        cmd = ["unused-typedef-extractor", srcFile]
        unusedTypeDefs = []
        process = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

        for line in process.stdout:
            unusedTypeDefs.append(line.strip())

        # Wait for the process to finish and get the exit code
        process.stdout.close()
        returnCode = process.wait()

        if returnCode != 0:
            self.logger.warn("Failed to extract unused typedefs for %s. Treating everything as used.", srcFile)

        # Split the lines
        usedTypeDeclDefLines = []
        allTypeDeclDefLines = functionAndDepsObj.typeDeclDefCodeLines.split("\n")
        self.logger.debug("Before filtering: %d records", len(allTypeDeclDefLines))
        for typeDeclDefLine in allTypeDeclDefLines:
            # It is IMPERATIVE that we don't filter anything that
            # spans multiple lines.
            # We take care of this in the Clang tool.
            if "typedef" in typeDeclDefLine:
                # Is it any of the unused typedefs?
                unused = False
                for unusedTypeDef in unusedTypeDefs:
                    if unusedTypeDef in typeDeclDefLine:
                        unused = True
                if not unused:
                    usedTypeDeclDefLines.append(typeDeclDefLine)

        functionAndDepsObj.typeDeclDefCodeLines = "\n".join(usedTypeDeclDefLines)
        # self.logger.info("Filtered lines: %s", functionAndDepsObj.typeDeclDefCodeLines)
        self.logger.debug("After filtering: %d records", len(usedTypeDeclDefLines))
