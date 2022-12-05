"""
Extract the syscalls for each process

"""
import logging
import os
import sys
import json

sys.path.insert(0, './python-utils/')

import util

import re
import optparse
import codetranslatorfactory

def isValidOpts(opts):
    """
    Check if the required options are sane to be accepted
        - Check if the provided files exist
        - Check if two sections (additional data) exist
        - Read all target libraries to be debloated from the provided list
    :param opts:
    :return:
    """
    if not options.configpath:
        parser.error("All options --configpath should be provided.")
        return False

    return True

def setLogPath(logPath):
    """
    Set the property of the logger: path, config, and format
    :param logPath:
    :return:
    """
    if os.path.exists(logPath):
        os.remove(logPath)

    rootLogger = logging.getLogger("coverage")
    if options.debug:
        logging.basicConfig(filename=logPath, level=logging.DEBUG)
        rootLogger.setLevel(logging.DEBUG)
    else:
        logging.basicConfig(filename=logPath, level=logging.INFO)
        rootLogger.setLevel(logging.INFO)

#    ch = logging.StreamHandler(sys.stdout)
    consoleHandler = logging.StreamHandler()
    rootLogger.addHandler(consoleHandler)
    return rootLogger
#    rootLogger.addHandler(ch)

if __name__ == "__main__":

    """
    Use OpenAI to convert provided functions to another language
    """
    usage = "Usage: %prog -i <Target binary> -o <File to store exported function list>"

    parser = optparse.OptionParser(usage=usage, version="1")

    parser.add_option("", "--configpath", dest="configpath", default=None, nargs=1,
                      help="Path to JSON configuration")

    parser.add_option("", "--apikey", dest="apikey", default=None, nargs=1,
                      help="Path to file containing API key")

    parser.add_option("-d", "--debug", dest="debug", action="store_true", default=False,
                      help="Debug enabled/disabled")

    (options, args) = parser.parse_args()
    rootLogger = setLogPath("converttorust.log")
    if not isValidOpts(options):
        rootLogger.error("Cannot run python script because of missing options")
        sys.exit(-1)

    configFileMap = None
    try:
        configFile = open(options.configpath, 'r')
        configFileStr = configFile.read()
        configFileMap = json.loads(configFileStr)
    except Exception as e:
        rootLogger.error("Trying to open config json %s, but doesn't exist: %s",
                        options.configpath, e)
        sys.exit(-1)

    funcSet = set()

    ''' read function, store in string, pass to openai '''
    trainingStr = configFileMap.get("trainingFile", "")        # give some sample C to safe rust code translations
    srcLanguage = configFileMap.get("srcLang", "")
    dstLanguage = configFileMap.get("dstLang", "")
    srcFolder = configFileMap.get("srcFolder", None)
    if ( not srcFolder ):
        rootLogger.error("No source folder provided in config json. exiting ...")
        sys.exit(-1)

    for filename in os.listdir(srcFolder):
        srcFilePath = os.path.join(srcFolder, filename)
        # checking if it is a file
        if os.path.isfile(srcFilePath):
            srcFile = open(srcFilePath, 'r')
            srcStr = srcFile.read()
            funcSet.add(srcStr)

    translators = configFileMap.get("translators", None)
    if ( not translators ):
        rootLogger.error("No translator specified in config json, exiting...")
        sys.exit(-1)

    apikey = ""
    for translator in translators:
        for name, options in translator.items():
            rootLogger.debug("translator: %s", name)
            modelEngine = options.get("engine", None) #"text-davinci-002"
            apiKeyFile = options.get("apikeypath", None)
            if ( apiKeyFile ):
                apiFile = open(apiKeyFile, 'r')
                apikey = apiFile.read().strip()
            codeTransObj = codetranslatorfactory.TranslatorFactory(rootLogger, 
                                            apikey, modelEngine, 
                                            srcLanguage, dstLanguage,
                                            trainingStr, name)
            for funcStr in funcSet:
                codeTransObj.translate(funcStr)
