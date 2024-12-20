#!/bin/bash

# 定义目录
rust_dir="./rust"
c_dir="./C"
compare_c_dir="./compare/C"
compare_rust_dir="./compare/Rust"

# 检查目录是否存在
if [[ ! -d "$rust_dir" || ! -d "$c_dir" ]]; then
  echo "确保 rust 和 C 目录都存在于当前目录下"
  exit 1
fi

# 创建 compare/C 和 compare/Rust 目录
mkdir -p "$compare_c_dir"
mkdir -p "$compare_rust_dir"

# 获取 rust 目录中的文件名（不包含路径）
rust_files=$(find "$rust_dir" -type f -exec basename {} \;)

# 遍历 C 目录，提取相同的文件名并进行复制
echo "开始查找并复制相同文件..."
for file in $rust_files; do
  if [[ -f "$c_dir/$file" ]]; then
    # 将 C 目录的文件复制到 compare/C
    cp "$c_dir/$file" "$compare_c_dir"
    echo "复制到 compare/C: $file"

    # 将 rust 目录的文件复制到 compare/Rust
    cp "$rust_dir/$file" "$compare_rust_dir"
    echo "复制到 compare/Rust: $file"
  fi
done

echo "文件复制完成。"
