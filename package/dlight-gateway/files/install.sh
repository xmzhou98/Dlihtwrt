#!/bin/bash
echo 开始安装openjdk8
cd ./openjdk8
./installjdk.sh
sleep 2s
echo 开始初始化数据库
cd ../db
./initdb.sh
sleep 2s
echo 开始部署应用
cd ../application
./installapp.sh
sleep 2s
echo 自动化部署结束，请输入任意字符重启系统
read -n 1 char
reboot
