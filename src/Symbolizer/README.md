## Automated generation of symbolized LLVM IR and Graphing


This script processes source files to generate symbolized LLVM Intermediate Representation (IR) files and converts them into graph visualizations. 


The overview of this tool is as follows.
1. Compiles each C file to LLVM bitcode.
2. Applies a custom LLVM pass to generate symbolized LLVM IR.
3. Runs KLEE on the IR files to extract symbolic execution logs.
4. Converts symbolic expressions into graph structures and saves them as .png files.
5. The message 'file_name output graph has been saved into graph_output/file_name folder' indicates that the graph corresponding to file_name has been successfully generated.
6. The message 'All the result graphs have successfully been saved into graph_output. Total processed files: $count. Total graphs generated: $gcount' indicates that all output graphs have been successfully generated.


### Input
Place all .c files you want to process inside the testcase directory.

### Output
The output is organized into two main directories:

1. klee_symbol_log: Contains symbolic execution logs from KLEE. Each log is named after its respective input file, and you can use these logs for debugging the generated graphs.

2. graph_out: Contains graph visualizations of the symbolized LLVM IR. Each file generates a separate directory structure within graph_out:

For easier debugging, it first separates different files into individual folders named after the file, and then within each folder, it further separates them by argument name.

The output structure is as following:
    klee_symbol_log/   # symbolic execution logs from KLEE
    graph_out/
    └── filename/
        └── argumentname/
            └── *.dot  # Original graph description files
            └── *.png  # Graph visualizations converted from .dot files














