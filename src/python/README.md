## C2Rust Translation Validator

### Dependencies

1. Please clone `git@github.com:taptipalit/typedefextractor.git` and build it. Make sure it builds the `clang` project.

2. Add the build directory to your `$PATH`. Make sure you can run `unused-typedef-extractor <src-dir>` from the terminal. 

3. Make sure you have `universal-ctags` installed.

`sudo apt purge ctags && sudo apt install universal-ctags`.

4. Make sure you have a GPT key stored in the environment variable `$OPENAI_KEY`.

5. Install the Python modules `openai` and `tiktoken` using `pip3`.

NOTE: When pulling, please make sure that you have the latest of the typedefextractor repo too.

### Generate the preprocessed files from the source directory

There is a wrapper (`inputs-complex/clang-wrapper.sh`) around the `clang` compiler that dumps out the preprocessed files. Configure and build the source code of the target application by passing `CC=<dir>/clang-wrapper.sh`. 

For an example, check out `compile.sh` in `inputs-complex/zlib-1.3.1`.

This will generate a bunch of `.i` files in the source directory. We want those.

NOTE: The clang wrapper assumes that the Makefile commands compile a single file at a time. This is the common case. But if you have something that tries to compile multiple files (and link) in the same command, such as `$(CC) a.c b.c -o a.out`, the wrapper won't work. Please let me know in case it's not easy to adjust the Makefile.

### Running the entire toolchain

You can either run the entire toolchain
`python3 translationValidator.py --src=<SRC_DIR>`.

This will:

1. Parse the `.i` files and extract the individual functions and create `.i` files for _each_ function. This file will also contain all the `typedef` and `astruct` definitions referenced by that function. 

The script will automatically filter all unneeded dependencies from the preprocessor expansion by automatically invoking `unused-typedef-extractor`. The code to do this is in `typedefFilter.py`. 

2. Then it will take each individual `.i` file and invoke the `gptTranslation.py` file. Currently, it uses GPT-3.5 (to prevent us from going bankrupt). 

To change it to use GPT-4, you should update the constants GPT_MODEL, CTX_WINDOW_LEN and MAX_COMPLETION_TOKENS constants in translationValidator.py

3. This will (hopefully) use GPT to create a corresponding `.rs` file for each `.i` file. 

4. Automatically invoke both the Clang C compiler to compile the `.i` files for the individual functions and the `rustc` compiler for the individual functions for the `.rs` files. Any compilation failures will be displayed on screen, and also in the log file in `validator.log`.

The final files will be in the directory `<SRC_DIR>/individual-funcs`. This directory will contain the individual `.i` files, the Rust files for each function, and the compiled bitcodes for both the `.i` file and the `.rs` file (if successful).


### Invoking only the GPT translation module

The GPT translation module has the following functionalities:

1. Chunk larger functions into smaller chunks that fit the context window length.

2. Chain the responses when the get truncated because of the response length limit.

To use this module you need to---

1. Create an instance of the `Translator` class from `gptTranslation.py`. and set up the `__init__` function. 

2. For each function you want to translate, set up a`FunctionDepsObj` instance (see. `functionAndDeps.py`). The fields `typeDeclDefCodeLines` and `funcCodeLines` are single strings of (newline-separated) typedefs and function code. 

Look at `extractFuncAndDeps` function in `functionAndDepsExtractor.py` for an example.

3. Invoke the `translate` function on the `Translator` object. This will return the translated Rust code.

