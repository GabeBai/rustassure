from antlr4 import *

from KqueryLexer import KqueryLexer 
from KqueryListener import KqueryListener
from KqueryParser import KqueryParser

class KqueryGrapher(KqueryListener):
    def enterExpr(self, ctx):
        print("Entered expr")
    
    def exitExpr(self, ctx):
        print("Exited expr")


if __name__ == "__main__":
    expression = "array small_array[2] : w32 -> w8 = symbolic"
    expression = "array foo[] : w8 -> w1 = [ true, false, false, true ]"
    expression = "(Read w8 0 small_array)"
    expression = "(Read w8 1 [1=0xff] @ small_array)"
    expression = "(ReadLSB w32 0 d)"
    expression = "(Add w32 N0:(ReadLSB w32 4 sptr) N0)"
    input_stream = InputStream(expression)
    lexer = KqueryLexer(input_stream)
    token_stream = CommonTokenStream(lexer)
    parser = KqueryParser(token_stream)

    tree = parser.prog()
    print(tree.toStringTree(recog=parser))
