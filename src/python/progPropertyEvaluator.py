import os
import logging
import sys
sys.path.append("./networkx")
import glob
import subprocess
from pathlib import Path
import shutil
import networkx as nx
from networkx.algorithms import isomorphism

import numpy as np

from enum import Enum
from functionAndDeps import FunctionAndDependencies
from loggerFactory import getLogger

class ProgPropertyEvaluator:
    def __init__(self, logger, indFilePath):
        self.logger = logger
        self.indFilePath = indFilePath
        """
        self.commands = ["wpa -ander -svfg -dump-vfg %s",
                         "wpa -ander -dump-constraint-graph -brief-constraint-graph=false %s",
                         "opt -dot-cfg %s -o o.bc"]
        """
        self.commands = ["wpa -ander -dump-constraint-graph -brief-constraint-graph=false %s"]


    def compareAll(self):
        allFiles = glob.iglob(os.path.join(self.indFilePath, "*.i"), recursive=False)
        # The comparison output file
        comparisonFile = os.path.join(self.indFilePath, "comparison.dat")
        with open(comparisonFile, "w") as compFile:
            compFile.write("FileNameBase, Cmd, Similarity_Score\n")
            for filePath in allFiles:
                fileBase = Path(filePath).stem
                dirPath = os.path.dirname(filePath)
                # Check that the .bc files for both the c bitcode and the Rust bitcode exists
                cBitCodeFile = os.path.join(dirPath, fileBase + ".i.bc")
                rustBitCodeFile = os.path.join(dirPath, fileBase + ".rs.bc")
                if os.path.isfile(cBitCodeFile) and os.path.isfile(rustBitCodeFile):
                    # Both compiled files exist      
                    self.generateAndCompare(fileBase, cBitCodeFile, rustBitCodeFile, compFile)
        # Copy the comparison file to the individual-funcs path
        destinationFile = os.path.join(self.indFilePath, "comparison.dat")
        shutil.copy(comparisonFile, destinationFile)


    def compareGraphEditDistance(self, G1, G2):
        ged = nx.graph_edit_distance(G1, G2)
        normGed = ged / max (G1.number_of_nodes() + G1.number_of_edges(), G2.number_of_nodes() + G2.number_of_edges())
        return normGed

    def spectralAnalysis(self, G):
        L = nx.laplacian_matrix(G).todense()
        eigenValues = np.linalg.eigvals(L)
        eigenValuesSorted = np.sort(eigenValues)
        return eigenValuesSorted

    def compareSpectralSimilarity(self, G1, G2):
        eigenValuesG1 = self.spectralAnalysis(G1)
        eigenValuesG2 = self.spectralAnalysis(G2)

        eigenValuesG1Norm = eigenValuesG1 / np.linalg.norm(eigenValuesG1)
        eigenValuesG2Norm = eigenValuesG2 / np.linalg.norm(eigenValuesG2)

        spectralSimilarity = np.linalg.norm(eigenValuesG1Norm - eigenValuesG2Norm)
        return spectralSimilarity

    def compareNodeEdgeOverlap(self, G1, G2):
        GM = isomorphism.GraphMatcher(G1, G2, node_match=isomorphism.categorical_node_match([], []))
        subgraph_isomorphisms = list(GM.subgraph_isomorphisms_iter())
        if len(subgraph_isomorphisms) == 0:
            return 0
        largestCommonSubGraphSize = max(len(iso) for iso in subgraph_isomorphisms)
        # self.logger.info("Largest common subgraph size = %d", largestCommonSubGraphSize)
        score = largestCommonSubGraphSize / max(G1.number_of_nodes(), G2.number_of_nodes())
        return score

    def filterGraph(self, G):
        # We filter out connected components or islands where the number of connections are < 3
        # These are usually extraneous data
        minSize = 3
        connectedComponents = list(nx.weakly_connected_components(G))
        filteredComponents = [component for component in connectedComponents if len(component) >= minSize]
        # Create a subgraph with the filtered components
        filteredNodes = set().union(*filteredComponents)
        filteredGraph = G.subgraph(filteredNodes).copy()
        self.logger.info("Initial graph had %d nodes, filtered graph has %d nodes", len(G), len(filteredGraph))
        return filteredGraph


    def compare(self, cmd, fileNameBase, cDotFileName, rustDotFileName, compFile):
        self.logger.info("Comparing graph similarity for original and translation for %s for %s", fileNameBase, cmd)
        G1 = nx.nx_agraph.read_dot(cDotFileName)
        G2 = nx.nx_agraph.read_dot(rustDotFileName)

        G1 = self.filterGraph(G1)
        G2 = self.filterGraph(G2)

        # Dump the number of nodes and edges
        self.logger.debug("Graph1: number of nodes: %d, edges: %d", len(G1), len(G1.edges()))
        self.logger.debug("Graph2: number of nodes: %d, edges: %d", len(G2), len(G2.edges()))

        if len(G1) > 0 and len(G2) > 0:
            editDistance = self.compareGraphEditDistance(G1, G2)
            # specSim = self.compareSpectralSimilarity(G1, G2)
            # overlap = self.compareNodeEdgeOverlap(G1, G2)
            self.logger.info("Edit distance = %f", editDistance)

            compFile.write("%s, %s, %f\n" % (fileNameBase, cmd, editDistance))
        else:
            compFile.write("%s, %s, 0.0 (graph empty)\n" % (fileNameBase, cmd ))



    def generateAndCompare(self, fileNameBase, cBitCodeFile, rustBitCodeFile, compFile):
        self.logger.info("Comparing file: %s", fileNameBase)
        for cmd in self.commands:
            # Run the command on the bitcode generate from the C code
            cCmd = cmd % cBitCodeFile
            self.logger.info("Comparing with cmd = %s", " ".join(cmd.split()[0:3]))
            cDotFile = ""
            rustDotFile = ""

            self.logger.debug("Executing: %s", cCmd)
            result = subprocess.run(cCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            self.logger.debug("Output: %s", result.stdout)
            self.logger.debug("Error: %s", result.stderr)
            if result.returncode != 0:
                self.logger.warn("Failed to run command %s, return code = %d", cCmd, result.returncode)
            else:
                # Find the most recently recreated *.dot file and move it 
                allCurrDirFiles = glob.glob("*.dot")  # You can also use '*.txt' to filter by file type
                latestFile = max(allCurrDirFiles, key=os.path.getmtime)
                renamedFile = f'{fileNameBase}_c_{latestFile}'
                destinationFile = os.path.join(self.indFilePath, renamedFile)
                shutil.copy(latestFile, destinationFile)
                cDotFile = destinationFile

            # Run the command on the bitcode generated from the Rust code
            rustCmd = cmd % rustBitCodeFile
            self.logger.debug("Executing: %s", rustCmd)

            result = subprocess.run(rustCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            self.logger.debug("Output: %s", result.stdout)
            self.logger.debug("Error: %s", result.stderr)
            if result.returncode != 0:
                self.logger.warn("Failed to run command %s, return code = %d", rustCmd, result.returncode)
            else:
                # Find the most recently recreated *.dot file and move it 
                allCurrDirFiles = glob.glob("*.dot")  # You can also use '*.txt' to filter by file type
                latestFile = max(allCurrDirFiles, key=os.path.getmtime)
                renamedFile = f'{fileNameBase}_rs_{latestFile}'
                destinationFile = os.path.join(self.indFilePath, renamedFile)
                shutil.copy(latestFile, destinationFile)
                rustDotFile = destinationFile
            self.compare(cmd, fileNameBase, cDotFile, rustDotFile, compFile)

if __name__ == "__main__":
    logger = getLogger("test_prog_property_logger.log")
    PPE = ProgPropertyEvaluator(logger, "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-3.5-turbo_2024-07-04_10-16-12")
    PPE.compareAll()
