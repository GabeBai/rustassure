#!/bin/bash

files="function.c gunction.c hunction.c iunction.c junction.c "

for file in $files; do
	base_file_name=$(basename "$file")
	clang -c -O0 -emit-llvm -S "$file" -o "$base_file_name".bc
	opt -load-pass-plugin ./build/Pass/libSymbolizerPass.so -O0 "$base_file_name".bc -S -o "$base_file_name"_klee.ll
	klee --libc=klee "$base_file_name"_klee.ll
done
