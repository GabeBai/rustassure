#!/bin/bash

# Create directories if they don't already exist
mkdir -p ../testcase/c ../testcase/rust


directory="${1:-../testcase/}"

find "$directory" -type f | while read -r file; do
    # Extract the filename from the path
    filename=$(basename "$file")
    
    # Check if the filename matches any in the c1_files list
    if [[ $file == *.i ]]; then
        mv "$file" ../testcase/c
    elif [[ $file == *.rs ]]; then
        mv "$file" ../testcase/rust
    fi
done
