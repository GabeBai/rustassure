class StructWithUsageInfo:
    """
    Represents the structs who's usage needs to be determined 
    before they can be translated to idiomatic Rust.
    """
    def __init__(self, name, cCode):
        self.name = name
        self.cCode = cCode
        self.usageList = []
        self.rustCode = ""

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

    # Class-level list of TypeWithUsageInfo
    # A list of structs along with their
    # usage list, their C source code
    # and their Rust source code
    # 1. The function `getFunctions` in translationValidator.py populates the struct's name, usage list,
    # and C source code
    # 2. Then, before translating each function,
    # we first translate these structs and store
    # their Rust code
    # 3. Then, every time we translate a function
    # that uses such a struct, we pass the Rust
    # translation to it. 
    structsWithUsageInfoMap= {} # Types that need usage information

    def __init__(self, funcSym):
        self.funcSym = funcSym
        self.funcCodeLines = ""
        self.typeDeclDefCodeLines = ""
        self.structsWithUsageInfo = {} # {name: (startIndex, endIndex)}
        
    def setFuncCodeLines(self, funcCodeLines):
        self.funcCodeLines = funcCodeLines

    def setTypeDeclDefCodeLines(self, typeDeclDefCodeLines):
        self.typeDeclDefCodeLines = typeDeclDefCodeLines

    def addTypeUsage(self, typeName, typeUsageCodeLine):
        if typeName not in self.typeUsageCodeLinesMap:
            self.typeUsageCodeLinesMap[typeName] = set()
        self.typeUsageCodeLinesMap[typeName].add(typeUsageCodeLine)
    
    """
    def stringifyExtraInfo(self):
        if len(self.typeUsageCodeLinesMap) == 0:
            return ""

        extra = "Also consider the following usages of the following struct.\n"
        for typeName in self.typeUsageCodeLinesMap:
            extra = extra + "struct " + typeName + ":\n"
            for use in self.typeUsageCodeLinesMap[typeName]:
                extra = extra + use + "\n"
        return extra
    """

