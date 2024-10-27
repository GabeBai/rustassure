#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Check if an input directory is provided
if [ -z "$1" ]; then
    echo "Please provide an input directory."
    exit 1
fi

prepare_directory() {
    if [ -d "$1" ]; then
        rm -rf "$1"/*
    else
        mkdir -p "$1"
    fi
    mkdir -p "$1/C" "$1/Rust" 
}

# Prepare directories
prepare_directory klee_bc
prepare_directory klee_ir_files
prepare_directory klee_symbol_log
prepare_directory graph_output

export C_INCLUDE_PATH=../klee/include

count=0
# Loop through each .c file in the directory
for c_file in "$1"/C/*.c; do
    # Extract the base filename without extension
    base_name=$(basename "$c_file" .c)
    
    # Compile the .c file to LLVM bitcode
    clang -c -O0 -emit-llvm -S "$c_file" -o "klee_bc/C/${base_name}.bc"
    
    # Run optimization pass on the bitcode
    opt -load-pass-plugin ./build/Pass/libSymbolizerPass.so -O0 "klee_bc/C/${base_name}.bc" -S -o "klee_ir_files/C/${base_name}_klee.ll"
    
    # Run KLEE on the generated LLVM IR and extract SYM VALUE lines
    klee --libc=klee "klee_ir_files/C/${base_name}_klee.ll" 2>&1 | awk '/SYM VALUE:/,/^[[:space:]]*$/' > "klee_symbol_log/C/${base_name}_klee_log.txt"

    echo "Processed $c_file and saved log to klee_symbol_log/C/${base_name}_klee_log.txt"
    
    cd graph_output/C
    # Run the Python parser on the KLEE log
    python3 ../../../python/kquery-parser/KqueryConverter.py "../../klee_symbol_log/C/${base_name}_klee_log.txt" "${base_name}"
    cd ../..

    count=$((count + 1))
    echo "$c_file output graph has been saved into graph_output/C/${base_name} folder"
done

gcount=0
for file in graph_output/C/**/**/*.dot; do
    # Check if there are any .dot files
    if [ -e "$file" ]; then
        # Get the base name of the file (without extension)
        base_name=$(basename "$file" .dot)
        
        # Get the directory of the .dot file
        dir_name=$(dirname "$file")
        
        # Convert .dot to .png using the dot command    
        dot -Tpng "$file" -o "${dir_name}/${base_name}.png"
        
        echo "Converted $file to ${dir_name}/${base_name}.png"
        gcount=$((gcount + 1))
    else
        echo "No .dot files found in graph_output."
        break
    fi
done

echo "All the result C graphs have successfully been saved into graph_output. Total processed files: $count. Total graphs generate: $gcount"

for r_file in "$1"/Rust/*.rs; do
    # Extract the base filename without extension
    base_name=$(basename "$r_file" .rs)
    
    # Compile the .rust file to LLVM bitcode
    rustc --emit=llvm-bc -C opt-level=0 "$r_file" -o "klee_bc/Rust/${base_name}.bc"

    opt -load-pass-plugin ./build/Pass/libSymbolizerPass.so -O0 "klee_bc/Rust/${base_name}.bc" -S -o "klee_ir_files/Rust/${base_name}_klee.ll"
    
    klee --libc=klee "klee_ir_files/Rust/${base_name}_klee.ll" 2>&1 | awk '/SYM VALUE:/,/^[[:space:]]*$/' > "klee_symbol_log/Rust/${base_name}_klee_log.txt"

    echo "Processed $r_file and saved log to klee_symbol_log/Rust/${base_name}_klee_log.txt"
    
    cd graph_output/Rust

    # Run the Python parser on the KLEE log
    python3 ../../../python/kquery-parser/KqueryConverter.py "../../klee_symbol_log/Rust/${base_name}_klee_log.txt" "${base_name}"
    cd ../..

    count=$((count + 1))
    echo "$r_file output graph has been saved into graph_output/Rust/${base_name} folder"
done

gcount=0
for file in graph_output/Rust/**/**/*.dot; do
    # Check if there are any .dot files
    if [ -e "$file" ]; then
        # Get the base name of the file (without extension)
        base_name=$(basename "$file" .dot)
        
        # Get the directory of the .dot file
        dir_name=$(dirname "$file")
        
        # Convert .dot to .png using the dot command    
        dot -Tpng "$file" -o "${dir_name}/${base_name}.png"
        
        echo "Converted $file to ${dir_name}/${base_name}.png"
        gcount=$((gcount + 1))
    else
        echo "No .dot files found in graph_output."
        break
    fi
done

echo "All the rust result graphs have successfully been saved into graph_output. Total processed files: $count. Total graphs generate: $gcount"