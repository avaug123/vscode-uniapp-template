#!/bin/bash

# 运行 Node.js 脚本
node .ci/ci.js --version $1 --env $2 --desc $3


# 检查 Node.js 命令的退出状态
node_exit_status=$?

# 如果 Node.js 脚本的退出状态不为0（即出错），则返回1
if [ $node_exit_status -ne 0 ]; then
  echo "JavaScript脚本执行失败，退出状态：$node_exit_status"
  exit 1
fi