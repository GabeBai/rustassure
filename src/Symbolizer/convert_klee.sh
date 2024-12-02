#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

if [ -e compare_graph_output_log.log ]; then
    rm compare_graph_output_log.log
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
prepare_directory klee_symbol_error_log
prepare_directory graph_output

export C_INCLUDE_PATH=../klee/include

manage_dot_files() {
  local dir="$1"
  local max_files=20  # Set your MAX_FILES limit here

  # Validate input
  if [ -z "$dir" ] || [ ! -d "$dir" ]; then
    echo "Error: Invalid or non-existent directory specified: $dir"
    return 1
  fi

  # Iterate through subdirectories
  find "$dir" -type d | while read -r subdir; do
    # Find all .dot files in the subdirectory
    dot_files=($(find "$subdir" -maxdepth 1 -type f -name "*.dot"))

    # Check if the number of .dot files exceeds the limit
    if [ "${#dot_files[@]}" -gt "$max_files" ]; then
      # Sort files and determine how many to delete
      sorted_files=($(printf "%s\n" "${dot_files[@]}" | sort))
      delete_count=$((${#sorted_files[@]} - max_files))
      files_to_delete=("${sorted_files[@]:0:$delete_count}")

      # Delete the files
      for file in "${files_to_delete[@]}"; do
        echo "Deleting: $file"
        rm "$file"
      done
    fi
  done
}

count=0
# Loop through each .c file in the directory
for c_file in testcase/C/*.i; do
    # Extract the base filename without extension
    base_name=$(basename "$c_file" .c)
    
    # Compile the .c file to LLVM bitcode
    # don't use -g currently, -g will cause some klee error
    clang -c -S -O0 -emit-llvm "$c_file" -o "klee_bc/C/${base_name}.ll"
    
    # Run optimization pass on the bitcode
    opt -load-pass-plugin ./build/Pass/libSymbolizerPass.so -O0 "klee_bc/C/${base_name}.ll" -S -o "klee_ir_files/C/${base_name}_klee.ll"
    
    # Run KLEE on the generated LLVM IR and extract SYM VALUE lines
    klee --libc=klee --max-time=15 "klee_ir_files/C/${base_name}_klee.ll" 2>&1 | awk '/SYM VALUE:/,/^[[:space:]]*$/' > "klee_symbol_log/C/${base_name}_klee_log.txt"
    
    #only for debug, we need to know all the execution error of KLEE 
    klee --libc=klee --max-time=10 "klee_ir_files/C/${base_name}_klee.ll" 2>&1 | awk '/KLEE: ERROR/' > "klee_symbol_error_log/C/${base_name}_error_log.txt"

    echo "Processed $c_file and saved log to klee_symbol_log/C/${base_name}_klee_log.txt"
    
    cd graph_output/C
    # Run the Python parser on the KLEE log
    python3 ../../../python/kquery-parser/KqueryConverter.py "../../klee_symbol_log/C/${base_name}_klee_log.txt" "${base_name}"
    cd ../..

    count=$((count + 1))
    echo "$c_file output graph has been saved into graph_output/C/${base_name} folder"
done

base_dir="graph_output/c"
if [ -d "$base_dir" ]; then
    find "$base_dir" -type d | while read -r subdir; do
        manage_dot_files "$subdir"
    done
fi

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

count=0
for r_file in testcase/Rust/*.rs; do
    # Extract the base filename without extension
    base_name=$(basename "$r_file" .rs)
    
    # Compile the .rust file to LLVM bitcode
    rustc --emit=llvm-ir -C opt-level=0 "$r_file" -o "klee_bc/Rust/${base_name}.bc"


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

python3 ../python/distance.py