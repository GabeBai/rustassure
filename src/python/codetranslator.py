import os, sys, time, subprocess
import tempfile
import logging

class CodeTranslatorTool():
    """
    This base class holds the functions which are shared among the different translator tool classes
    """
    def __init__(self, logger, apikey, engine, srclang, dstlang, train):
        self.logger = logger
        self.apikey = apikey
        self.engine = engine
        self.srclang = srclang
        self.dstlang = dstlang
        self.train = train

    def translate(self, srcStr):
        return srcStr
