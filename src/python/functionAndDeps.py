class FunctionAndDependencies:
    """
    A function and its dependencies can involve the following:
    1. A function and all the file's typedefs, struct type information
    2. A function and only its required typedefs, struct type information
    3. 2 + its 1-level callers
    4. 2 + its 1-level callees
    5. 2 + its 1-level callers + 1-level callees
    Right now only 1 works.

    """
    def __init__(self, funcSym):
        self.funcSym = funcSym
        self.funcCodeLines = ""
        self.typeDeclDefCodeLines = ""
        self.typeUsageCodeLinesMap = {} # dict of typename: usage

    def setFuncCodeLines(self, funcCodeLines):
        self.funcCodeLines = funcCodeLines

    def setTypeDeclDefCodeLines(self, typeDeclDefCodeLines):
        self.typeDeclDefCodeLines = typeDeclDefCodeLines

    def addTypeUsage(self, typeName, typeUsageCodeLine):
        if typeName not in self.typeUsageCodeLinesMap:
            self.typeUsageCodeLinesMap[typeName] = set()
        self.typeUsageCodeLinesMap[typeName].add(typeUsageCodeLine)

    def stringifyExtraInfo(self):
        if len(self.typeUsageCodeLinesMap) == 0:
            return ""

        extra = "Also consider the following usages of the following struct.\n"
        for typeName in self.typeUsageCodeLinesMap:
            extra = extra + "struct " + typeName + ":\n"
            for use in self.typeUsageCodeLinesMap[typeName]:
                extra = extra + use + "\n"
        return extra

