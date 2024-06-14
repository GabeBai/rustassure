#!/bin/bash

CC=../../clang-wrapper.sh make
cd lru_cache
CC=../../../clang-wrapper.sh make
