#!/bin/bash

# 定义screen会话名称
SESSION_NAME="mysession"

# 启动一个新的screen会话，并在该会话中运行curl命令
screen -dmS $SESSION_NAME bash -c "curl -sL https://nubit.sh | bash; echo '脚本执行完毕'; exec bash"

# 检查是否成功启动
if screen -list | grep -q "$SESSION_NAME"; then
  echo "Screen 会话 '$SESSION_NAME' 已成功启动并运行脚本。"
  echo "你可以使用 'screen -r $SESSION_NAME' 查看会话。"
  echo "使用 Ctrl + A + D 退出 screen 会话。"
else
  echo "启动 screen 会话失败。"
fi
