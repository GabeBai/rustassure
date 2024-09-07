import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess
import traceback
import tiktoken


from tabulate import tabulate

GPT3_MODEL="gpt-3.5-turbo"
GPT3_CTX_WINDOW_LEN=16*1000
GPT3_MAX_COMPLETION_TOKENS=4096 # This is the max value you can put for max_tokens: the max size of a response, https://platform.openai.com/docs/models/gpt-4-turbo-and-gpt-4 and search for output tokens

GPT4_MODEL="gpt-4-turbo"
GPT4_CTX_WINDOW_LEN=128*1000
GPT4_MAX_COMPLETION_TOKENS=4096 

CLAUDE3_CTX_WINDOW_LEN=200*1000

def count_tokens(source_dir):
    file_contents = []
    for file in glob.glob(os.path.join(source_dir, '**', '*.[ch]'), recursive=True):
        if file.endswith('.c') or file.endswith('.h'):
            with open(os.path.join(source_dir, file), 'r') as f:
                file_contents.append(f.read())
    file_string = "\n".join(file_contents)
    tokenizer = tiktoken.get_encoding(tiktoken.encoding_name_for_model(GPT3_MODEL))

    # print(file_string)
    tokens = tokenizer.encode(file_string)
    return len(tokens)


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 test_fit_context_window.py <DIR>")
        sys.exit(-1)
    dirs = [f.path for f in os.scandir(sys.argv[1]) if f.is_dir()]
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/coreutils")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/klib")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/libcsv")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/lighttpd-1.4.76")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/mbedtls/library")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/minutils")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/uthash")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/zlib-1.3.1")
    
    headers = ["Directory", "Total Tokens", "Num. Requests (GPT3)", "Num. Requests (GPT4)", "Num. Requests (CLAUDE)"]
    data = []
    for directory in dirs:
        token_count = count_tokens(directory)
        data.append([directory, token_count, str(token_count/GPT3_CTX_WINDOW_LEN), str(token_count/GPT4_CTX_WINDOW_LEN), str(token_count/CLAUDE3_CTX_WINDOW_LEN)])
    print(tabulate(data, headers=headers, tablefmt="grid"))
