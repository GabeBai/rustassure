#!/bin/bash

# 使用 clang-wrapper.sh 编译 u8c.c
./clang-wrapper.sh -Wall -std=c99 -O2 -c u8c.c

# 进入 test 目录
cd test

# 确保 runtest.sh 可执行
chmod +x ./runtest.sh

# 运行测试脚本
./runtest.sh
