#!/bin/bash

mkdir -p ./testcase/c ./testcase/rust

directory="${1:-./testcase/before_divide_testcases}"

find "$directory" -type f | while IFS= read -r file; do
    case "$file" in
        *.i) mv "$file" ./testcase/c/ ;;
        *.rs) mv "$file" ./testcase/rust/ ;;
    esac
done
