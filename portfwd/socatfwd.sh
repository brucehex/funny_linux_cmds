#!/bin/bash

# 把监听在远程主机12.34.56.78上的mysql服务unix socke
# t映射到本地的/var/run/mysqld.temp.sock, 这样就可以
# 用mysql -S /var/run/mysqld/mysqld.sock来访问远程主
# 机的mysql服务了。
socat "UNIX-LISTEN:/var/run/mysqld.temp.sock,reuseaddr,fork" EXEC:"ssh root@12.34.56.78 socat STDIO UNIX-CONNECT:/var/run/mysqld/mysqld.sock"

# 还可以用下面的命令把12.34.56.78上的mysql映射到本地
# 的5500端口，然后使用mysql -p 5500命令访问。
socat TCP-LISTEN:5500 EXEC:'ssh root@12.34.56.78 "socat STDIO UNIX-CONNECT:/var/run/mysqld/mysqld.sock"'

# 把12.34.56.78的udp 161端口映射到本地的1611端口：
socat udp-listen:1611 system:'ssh root@12.34.56.78 "socat stdio udp-connect:remotetarget:161"'


