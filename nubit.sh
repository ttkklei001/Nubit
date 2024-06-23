#!/bin/bash

# 定义screen会话名称
SESSION_NAME="mysession"

# 启动一个新的screen会话，并在该会话中运行curl命令
screen -dmS $SESSION_NAME bash -c "curl -sL1 https://nubit.sh | bash"

# 检查是否成功启动
if screen -list | grep -q "$SESSION_NAME"; then
  echo "Screen session '$SESSION_NAME' started successfully and running the script."
else
  echo "Failed to start screen session."
fi
