# C2Rust Translation Validator

This is the repository for the `rustify-validator` tool to compute the semantic similarity between the original C code and the translation. 

The overview of this tool is as follows. The script in `src/python/translationValidator.py` kicks off the process. 

1. It accepts as input a codebase, and then it separates out each function in its own file. The script file responsible for this is `src/python/functionAndDepsExtractor.py` The codebase should reside inside `src/python/inputs-complex`.

2. Then, it reads each file (containing one function) and asks the chosen LLM model for a translation. 
(See script: `src/python/gptTranslation.py`).

3. It tries to compile the Rust translation, and if it fails, it tries feeds the error message back to the LLM model and asks it to fix it. There is a cap on the number of attempts that can be controlled by the `COMPILATION_RETRIES` in the script `gptTranslation.py`.

4. The output is typically inside a directory named `individual-funcs_<options>`, where `options` contains the model used and the timestamp. Every time we execute the script, it will create a new directory so and not cobble the old result directory.

5. Then, It will compile the each .i and .rs files into LLVM IR and symbolized it. We will mark every input arguments and return values as  symbols and print the corresponding KLEE Symbolic value.

6. Then, we will use KLEE to execute the symbolized IR and gathers all of the output graph and calculate the edit distance between C results and Rust results.



NOTE: IMPORTANT: 

When developing or trying to fix bugs, PLEASE make sure that the LLM model is set to GPT-3.5. You can do this by turning off `use-gpt4` and `use-claude` in the `translationValidator.py` either by hardcoding it or passing these values explicitly as `False` on the command line. 

GPT-4o is very expensive. So please use GPT-3.5 for testing and development and when we are ready to generate the results, lets use GPT-4.o.

If you are a member of the team, please email `tpalit@ucdavis.edu` for the OpenAI key that you should set up in an environment variable as described below (if you haven't received it yet).

## Dependencies

### Frontend denpendencies

Frontend includes extract all individual .i files and translate them into rust by LLM

1. Run `git submodule update --init --recursive`. Inside `src/SVF` execute `./build.sh` and then inside `Release-Build` invoke `sudo make install`.

2. Install `rust` using `rustup`. Then, downgrade to version 1.64.0 which uses LLVM 14 backend, which we use.

		`rustup install 1.64.0`
		`rustup default 1.64.0`

3. Please clone `git@github.com:taptipalit/typedefextractor.git` and build it. Make sure it builds the `clang` project.

4. Add the build directory to your `$PATH`. Make sure you can run `unused-typedef-extractor <src-dir>` from the terminal. 

5. Make sure you have `universal-ctags` installed.

`sudo apt purge ctags && sudo apt install universal-ctags`.

6. Make sure you have a GPT key stored in the environment variable `$OPENAI_KEY`.

7. Install the Python modules `openai`, `tiktoken`, `more_itertools`, and `pycparser` using `pip3`. For the validator, also install `antlr4-tools`, `antlr4-python3-runtime`, `numpy`, `scipy`, `pygraphviz`, `pydot`, and `networkx`.

### Backend denpendencies

Backend includes using LLVM to modify all rust and C files and use KLEE to get symbolic value. Then run graph compare algorithm between them

1. Install symbolic dependencies 
   * `sudo apt-get install z3 cmake`
   * `pip3 install cmake`
   * `pip install cmake`

2. Download the LLVM and clang binaries 
	* `wget https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.0/clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz`.
	* Extract it `tar -Jxvf clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz`.
	* Add the `<FULL_PATH>/clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04/bin` to `$PATH`. This will bring the binaries on your path and you can invoke them like standard Linux tools.

3.  Once you init the LLVM submodules you should have the KLEE repository. 
	 * Create a directory for `klee-build` in `<PATH>/rustify-validator/src` 
	 * Run `cmake -DCMAKE_BUILD_TYPE=Release -DENABLE_TCMALLOC=0 -DENABLE_SOLVER_Z3=ON ../klee`
	* Run `make -j4 && sudo make install`

4. Build the Symbolizer pass. This is LLVM tool that automatically inserts the `klee_make_symbolic` and `klee_print_exprs` functions to the LLVM bitcode. 
	 Inside `rustify/src/Symbolizer` run `./build.sh`.

 
NOTE: When pulling, please make sure that you have the latest of the typedefextractor repo too.

## Tool chain detailed introduction

This part gives detailed introduction of the whole tool chain.

### preprocessed files module

There is a wrapper (`inputs-complex/clang-wrapper.sh`) around the `clang` compiler that dumps out the preprocessed files. Configure and build the source code of the target application by passing `CC=<dir>/clang-wrapper.sh`. 

For an example, check out `compile.sh` in `inputs-complex/zlib-1.3.1`.

This will generate a bunch of `.i` files in the source directory. We want those.

NOTE: The clang wrapper assumes that the Makefile commands compile a single file at a time. This is the common case. But if you have something that tries to compile multiple files (and link) in the same command, such as `$(CC) a.c b.c -o a.out`, the wrapper won't work. Please let me know in case it's not easy to adjust the Makefile.

### GPT translation module

The GPT tranlation module has following steps:

1. Parse the `.i` files and extract the individual functions and create `.i` files for _each_ function. This file will also contain all the `typedef` and `astruct` definitions referenced by that function. 

The script will automatically filter all unneeded dependencies from the preprocessor expansion by automatically invoking `unused-typedef-extractor`. The code to do this is in `typedefFilter.py`. 

2. Then it will take each individual `.i` file and invoke the `gptTranslation.py` file. Currently, it uses GPT-3.5 by default (to prevent us from going bankrupt). To use GPT-4 pass `--use-gpt4` to the `translationValidator.py`.

3. This will (hopefully) use GPT to create a corresponding `.rs` file for each `.i` file. 

4. Automatically invoke both the Clang C compiler to compile the `.i` files for the individual functions and the `rustc` compiler for the individual functions for the `.rs` files. Any compilation failures will be displayed on screen, and also in the log file in `validator.log`.

The final files will be in the directory `<SRC_DIR>/individual-funcs`. This directory will contain the individual `.i` files, the Rust files for each function, and the compiled bitcodes for both the `.i` file and the `.rs` file (if successful).


### Fine-tuning

We can only fine-tune GPT 3.5 models, as of 6/24/2024.

1. Place the fine-tuning training file in `./training` according to the existing formatting. 

2. Run `python3 jsonifyTrainingData.py`. 

3. Go to `https://platform.openai.com/finetune/` to check the progress. It should show the fine tuning job. When it finishes, grab the name of the model (TODO: provide it as a argument to the script)

4. Then, pass --fine-tuned-model=<model_name> when invoking `translatorValidator.py`.

### symbolic execution module

Steps of symbolic execution module is as following:

1. Compiles each C file to LLVM bitcode.

2. Applies a custom LLVM pass to generate symbolized LLVM IR.

3. Runs KLEE on the IR files to extract symbolic execution logs.

4. Converts symbolic expressions into tree structures and saves them as .png files.

5. run graph compare algorithm to compare the similiarity and differences between the output symbolic structure.



## Quick start

This part gives serveral ways to run rust-validator tool chain.

Rust-validator has two parts
1. Frontend : translate C code base to Rust.
2. Backend : use KLEE to verify transaltion similarity.

### Frontend

1. Inside `src/python` run `python3 translationValidator.py`
2. It should be given a input codebase directory by `--src=<input directory>`
3. The default GPT model is gpt 3.5, it can be changed by input `--use-gpt4=true` or `--use-claude=true`
4. The final files will be in the directory `<SRC_DIR>/individual-funcs`. This directory will contain the individual `.i` files, the Rust files for each function, and the compiled bitcodes for both the `.i` file and the `.rs` file (if successful).

### Backend

1. inside `src/python` run `python3 performSymbolExecution.py`, there are several existing evaluation codebases that can be selected. You can select the codebase and GPT model that you want to try according to the commandline hint.
2. Or, you can specify any translated repostiory that you want to test by `python3 performSymbolExecution.py --src=<input directory>`
3. The output is in src/Symbolizer, the directory name is `codebase_gptmodel_data`.

There are several ouput inside the output directory
1. Rust and C symbol results are in `graph_output`
2. Graph compare results(edit_distance) are in `edit_distance`
3. `result.csv` includes all of the statistical results 
	* total_functions : Total number of functions in the original input codebase.
	* total_rust_functions_compiled : Total number of translated rust functions that can be compiled.
	* total_arguments : Total number of arguments of the rust functions that can be compiled. If it is a struct, then expand it.
	* edit_distance_equal_0 : Total number of arguments that the edit_distance of the symbolic value between C & Rust are 0.
	* overall_lines_sum : Total lines of the transalted Rust target functions.
	* overall_unsafe_sum : Total lines of the transalted Rust target functions which are unsafe.
	* overall_safe_lines : Total lines of the transalted Rust target functions which are safe.
	* coverage : KLEE execution instruction coverage of Rust.


### Whole Tool Chain

1. It combines frontend and backend of the tool chain. It will firstly transalte the input codebase and then use KLEE to verify the results.
2. Run `python3 translateAndSymbolicValidate.py --src=<input_directory>`
3. Change GPT model by specify argument through `--use-gpt4=true`
