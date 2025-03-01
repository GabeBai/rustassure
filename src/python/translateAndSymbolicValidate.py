from translationValidator import *
from performSymbolExecution import *

def perform_symbol_execution(input_directory):
    perform_general_execution(input_directory)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Translate C code to Rust and then validate the translation, because why not?")
    parser.add_argument("--src", type=str, default="./inputs-complex/zlib-1.3.1/", help="The source directory that contains the preprocessed C files")
    parser.add_argument("--preanalysis-only", type=bool, default=False, help="Only run the preanalysis")
    parser.add_argument("--use-gpt4", type=bool, default=False, help="Use GPT4 instead of GPT3")
    parser.add_argument("--use-claude", type=bool, default=False, help="Use Claude")
    parser.add_argument("--use-gpt4mini", type=bool, default=False, help="Use GPT4Mini")

    parser.add_argument("--translator-mode", type=str, default="feedback", help="Controls how the input file and its dependencies are chunked to fit into the LLM model context window. See gptTranslation.py for more information.")
    parser.add_argument("--fine-tuned-model", type=str, default="", help="The source directory that contains the preprocessed C files")
    parser.add_argument("--single-file-name", type=str, default="", help="The name of the single file that should be analyzed")
    parser.add_argument("--dir-prefix", type=str, default="", help="Add a prefix to the individual-funcs directory name")
    parser.add_argument("--file-list-file", type=str, default="", help="File containing list of files to consider in the source directory")
    parser.add_argument("--multithreading", type=bool, default=True, help="Multithreading with 10 threads when sending OpenAI requests")

    args = parser.parse_args()
    args.src = os.path.expanduser(args.src)

    baseDir = os.path.basename(os.path.normpath(args.src))
    loggerFileName = "./" + baseDir + "_validator.log"
    logger = getLogger(loggerFileName)

    if args.use_claude:
        args.multithreading = False

    logger.info("Command line options: %s", args)

    output_directory = processCodebase(args.src,
                                       args.use_gpt4,
                                       args.use_gpt4mini,
                                       args.use_claude,
                                       args.fine_tuned_model,
                                       args.preanalysis_only,
                                       Translator.getTranslatorMode(args.translator_mode),
                                       args.single_file_name,
                                       args.dir_prefix,
                                       args.file_list_file,
                                       args.multithreading,
                                       logger)
    print(f"output_directory: {output_directory}")
    perform_general_execution(output_directory)
