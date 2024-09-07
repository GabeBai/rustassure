#!/bin/bash

# This script translates every test case.
# The translator script assumes that all the .i files are part of the same
# library or binary.
# Here, the different tests are unique.
# So here's what we do---we compile (generate the .i file) 
# and translate each test case one-by-one
# in its own directory.

# Note: For every invocation of the translationValidator.py script
# there is only a single .i file present in the uthash/ directory.
# We `make clean` before it, and only `make <test>` that test case to ensure that.

set -x 
for i in {1..97};
do
	find . -name "*.i" -exec rm {} \;
	make clean

	file_name=test${i}
	echo $file_name
	CC=../../clang-wrapper.sh make $file_name
	cd ~/rustify/src/python/
	python3 translationValidator.py --src /home/tpalit/rustify/src/python/inputs-complex/uthash --dir-prefix=$file_name
	cd -
done
# cd lru_cache
# make clean
# CC=../../../clang-wrapper.sh make
