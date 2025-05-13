#!/bin/bash

# 创建输出目录（如果不存在）
mkdir -p output

# 设置输出目录的权限
chmod 755 output

# 编译LaTeX文件
pdflatex -output-directory=output -interaction=nonstopmode overleaf_tool/table/model_radar.tex

# 检查编译是否成功
if [ $? -eq 0 ]; then
    echo "编译成功！PDF文件已生成在 output 目录下"
else
    echo "编译失败，请检查错误信息"
fi