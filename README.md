# Rustify

This is the repository for the rustify tool which is related to our paper blah blah.

## Overview
Our tool uses program analysis to identify code written in C that would be *easy* to 
translate to Rust (either automatically or by a developer). Therefore, our tool consists
of an LLVM pass which performs program analysis and then a python script which converts
the identified *easy* code to Rust using generative AI.
We will test the generated code both manually and by running any test cases available for
the code.

## Prerequisites
1. LLVM, SVF, Gold linker
2. python3.8
3. TODO...

## LLVM Pass

## AI-powered Translation
To perform the translation we need the following:
    1. Function/API names that are simple to translate
    2. The source code of the functions/APIs so we can translate them
    3. A tool to perform the translation
        3.a For generative AI we need to support multiple APIs (both on the web and local)

The first need is provided by our LLVM pass. Our LLVM pass only provides the names
of the simple functions. We need to extract the source code for each function, so
we can perform the translation. Once we have the source code of a function, we can 
perform the translation.

We have developed a python script which manages all of these steps. It first runs the
LLVM pass to extract the simple/complex function names. Given the path to a target
program's source code, it then uses `ctags` to extract the source code for each function.
It then provides this source code to an LLM and asks it to translate the given code to Rust.

Our script can also train the LLM before sending the translation requests. To use the training
feature you must provide sample C and Rust code pairs which are semantically equivalent.

### Python Script
In this section we will discuss how we can configure our script to perform the operations
discussed above.
Everything is configured through a json file named `config.json`. Through this json file
you can specify the source language, the target language and all the paths needed to 
run the LLVM pass, extract the function source code for simple/complex functions, and 
invoke the AI interface to perform the translation. Each option has been explained below:

- srcLang: specify the source language, this will be used when interacting with the LLM
- dstLang: specify the source language, this will be used when interacting with the LLM
- trainingFile: this specifies a folder containing C/Rust pairs. Each file in this folder
    should contain code in the source language and in the target language
- srcFolder: (deprecated)
- llvm-pass-cmd: the command used to run the LLVM pass, it should show the correct path to the
  llvm run-pass.sh script
- llvm-log-path: (unused for now) 
- simple-api-path: path to the simple functions, the prefix of the path should be changed to
  match the folder of the python script -> TODO: change these to use predefined ENV vars
- complex-api-path: path to the complex functions, the prefix of the path should be changed to
  match the folder of the python script -> TODO: change these to use predefined ENV vars
- export-func-path: (deprecated)
- inputs: this contains an array of dictionaries, where we specify the target name, and
  the path to its bitcode and source code
- translators: this is another array of dictionaries, which we will use to specify our translators.
  to add a new translator you can follow the same style used for openai 
