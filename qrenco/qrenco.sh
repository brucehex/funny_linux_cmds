#!/bin/bash

# 为网站http://114.115.144.21/生成一个二维码
echo "http://114.115.144.21/" | curl -F-=\<- qrenco.de
