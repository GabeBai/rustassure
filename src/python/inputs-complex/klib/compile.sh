#!/bin/bash

# Loop through all .c and .h files in the current directory

for file in *.h; do
    # Check if the file exists to handle the case where no files match the pattern
    if [[ -e "$file" ]]; then
        echo "Processing $file..."
        # Replace `your_command` with the actual command you want to run
        clang -E -P "$file" -o "${file%.h}.i"
    fi
done

for file in *.c; do
    # Check if the file exists to handle the case where no files match the pattern
    if [[ -e "$file" ]]; then
        echo "Processing $file..."
        # Replace `your_command` with the actual command you want to run
        clang -E -P "$file" -o "${file%.c}.i"
    fi
done
