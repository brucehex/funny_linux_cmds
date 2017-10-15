#!/bin/bash

# 在hosta上执行下面的命令，它会建立一个从hosta到
# hostb的ssh会话，同时将8080端口映射到hostb的1080
# 端口。
ssh -R 1080:localhost:8080 root@hostb
