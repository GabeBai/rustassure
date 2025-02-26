#!/bin/bash

# 清理旧的测试文件
rm -f ut_*

# 复制调试相关文件
cp dbg.h dbgstat.c

# 使用 clang-wrapper.sh 编译 dbgstat
./clang-wrapper.sh -DDBGSTAT -std=c99 -O2 -Wall -o dbgstat dbgstat.c

# 删除 dbgstat.c 源文件
rm dbgstat.c

# 编译所有 test*.c 测试文件
for f in test*.c; do
  echo "Compiling '$f'"
  ./clang-wrapper.sh -DDEBUG -std=c99 -O2 -Wall -I.. -c "$f"
  ./clang-wrapper.sh -o "ut_${f%.c}" "${f%.c}.o" ../u8c.o 
done

# 运行所有测试并收集日志
rm -f runtest.log
for f in ut_*; do
  echo "Running '$f' 2>> runtest.log"
  ./"$f" 2>> runtest.log
done 

# 运行 dbgstat 解析测试日志
./dbgstat < runtest.log
