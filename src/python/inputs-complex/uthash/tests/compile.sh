#!/bin/bash

make clean
CC=../../clang-wrapper.sh make
cd lru_cache
make clean
CC=../../../clang-wrapper.sh make
