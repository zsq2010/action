#!/bin/bash

# 使用 pgrep 检查是否存在与 myapp 相关的进程
if pgrep -f myapp > /dev/null; then
    # 存在相关进程，使用 pkill 杀死这些进程
    pkill -f myapp
    echo "相关进程已被杀死"
else
    echo "未找到相关进程"
fi

# 添加执行权限
chmod +x ./myapp
# 启动 myapp
nohup ./myapp &
