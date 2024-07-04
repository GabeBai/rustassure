import os
import logging

def getLogger(logPath):
    if os.path.exists(logPath):
        os.remove(logPath)
    # Create a logger
    logger = logging.getLogger('translator_logger')
    logger.setLevel(logging.DEBUG)
    
    # Create file handler which logs even debug messages
    fh = logging.FileHandler(logPath)
    fh.setLevel(logging.DEBUG)
    
    # Create console handler with a higher log level
    ch = logging.StreamHandler()
    ch.setLevel(logging.INFO)

    # Create formatter and add it to the handlers
    formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
    fh.setFormatter(formatter)
    ch.setFormatter(formatter)

    # Add the handlers to the logger
    logger.addHandler(fh)
    logger.addHandler(ch)

    return logger

