#!/bin/bash

make clean && make distclean
CC=../clang-wrapper.sh CFLAGS="-O0" ./configure
make
