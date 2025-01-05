#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

if [ -e compare_graph_output_log.log ]; then
    rm compare_graph_output_log.log
fi

[ -f input.json ] && rm input.json

# todo @gab fix me!!
create_json() {
    jq -n '{
    "csv_set_quote" : {
        "0" : "CsvParser"
    },
    "csv_get_opts" : {
        "0" : "CsvParser"
    },
    "csv_fini" : {
        "0" : "CsvParser"
    },
    "csv_set_space_func" : {
        "1" : "function",
        "2" : "function"
    },
    "csv_fwrite2" : {
        "0" : "File"
    },
    "csv_fwrite" : {
        "0" : "File"
    }
}' > input.json
}

MAX_JOBS=4

limit_jobs() {
  while [ "$(jobs -p | wc -l)" -ge "$MAX_JOBS" ]; do
    wait -n
  done
}


prepare_directory() {
    if [ -d "$1" ]; then
        rm -rf "$1"/*
    else
        mkdir -p "$1"
    fi
    mkdir -p "$1/C" "$1/Rust" 
    if [ -f "process_log.log" ]; then
        rm process_log.log
    fi
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
  local max_files=20

  if [ -z "$dir" ] || [ ! -d "$dir" ]; then
    echo "Error: Invalid or non-existent directory specified: $dir"
    return 1
  fi

  while IFS= read -r subdir; do
    limit_jobs
    {
      dot_files=($(find "$subdir" -maxdepth 1 -type f -name "*.dot"))
      if [ "${#dot_files[@]}" -gt "$max_files" ]; then
        sorted_files=($(printf "%s\n" "${dot_files[@]}" | sort))
        delete_count=$(( ${#sorted_files[@]} - max_files ))
        files_to_delete=("${sorted_files[@]:0:$delete_count}")

        for file in "${files_to_delete[@]}"; do
          echo "Deleting: $file"
          rm "$file"
        done
      fi
    } &
  done < <(find "$dir" -type d)

  wait
}


# Loop through each .c file in the directory
for c_file in testcase/C/*.i; do
    limit_jobs
    (
        echo "start process $c_file"

        # Extract the base filename without extension
        base_name=$(basename "$c_file" .i)
        
        # Compile the .c file to LLVM bitcode
        # don't use -g currently, -g will cause some klee error
        clang -c -S -O0 -emit-llvm "$c_file" -o "klee_bc/C/${base_name}.ll"
        
        # Run optimization pass on the bitcode
        opt -load-pass-plugin ./build/Pass/libSymbolizerPass.so -O0 "klee_bc/C/${base_name}.ll" -S -o "klee_ir_files/C/${base_name}_klee.ll"
        
        # Run KLEE on the generated LLVM IR and extract SYM VALUE lines
        klee --libc=klee --max-time=100 "klee_ir_files/C/${base_name}_klee.ll" 2>&1 | awk '/SYM VALUE:/,/^[[:space:]]*$/' > "klee_symbol_log/C/${base_name}_klee_log.txt"
        
        #only for debug, we need to know all the execution error of KLEE 
        # klee --libc=klee --max-time=60 "klee_ir_files/C/${base_name}_klee.ll" 2>&1 | awk '/KLEE: ERROR/' > "klee_symbol_error_log/C/${base_name}_error_log.txt"

        cd graph_output/C
        # Run the Python parser on the KLEE log
        python3 ../../../python/kquery-parser/KqueryConverter.py "../../klee_symbol_log/C/${base_name}_klee_log.txt" "${base_name}" "c"
        cd ../..

        echo "C/$c_file has been processed successfully"
    ) &
done

wait

python3 helper.py 'c'

for file in graph_output/C/**/**/*.dot; do
    if [ ! -e "$file" ]; then
        echo "No .dot files found in graph_output."
        break
    fi

    limit_jobs
    {
        base_name=$(basename "$file" .dot)
        dir_name=$(dirname "$file")
        
        dot -Tpng "$file" -o "${dir_name}/${base_name}.png"
        echo "Converted $file to ${dir_name}/${base_name}.png"
        gcount=$((gcount + 1))
    } &
done

# Wait for all parallel jobs to finish before exiting the script
wait


create_json

python3 ../python/llvmBitcodeEmitter.py testcase/rust



for r_file in testcase/Rust/*.bc; do
    limit_jobs
    (
        # Extract the base filename without extension
        base_name=$(basename "$r_file" .rs.bc)

        opt -load-pass-plugin ./build/Pass/libSymbolizerPass.so -O0 "$r_file" -S -o "klee_ir_files/Rust/${base_name}_klee.ll"
        
        klee --libc=klee --max-time=400 "klee_ir_files/Rust/${base_name}_klee.ll" 2>&1 | awk '/SYM VALUE:/,/^[[:space:]]*$/' > "klee_symbol_log/Rust/${base_name}_klee_log.txt"

        cd graph_output/Rust
        # Run the Python parser on the KLEE log
        python3 ../../../python/kquery-parser/KqueryConverter.py "../../klee_symbol_log/Rust/${base_name}_klee_log.txt" "${base_name}" "Rust"
        cd ../..

        echo "Rust/$r_file has been processed successfully"
    ) &
done

wait

python3 helper.py 'rust'

for file in graph_output/Rust/**/**/*.dot; do
    if [ ! -e "$file" ]; then
        echo "No .dot files found in graph_output."
        break
    fi

    limit_jobs
    {
        base_name=$(basename "$file" .dot)
        dir_name=$(dirname "$file")
        
        dot -Tpng "$file" -o "${dir_name}/${base_name}.png"
        echo "Converted $file to ${dir_name}/${base_name}.png"
    } &
done

wait

python3 ../python/distance.py