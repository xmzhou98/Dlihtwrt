#!/bin/bash
#echo 开始配置postgresql环境变量
#uci set postgresql.config.PGDATA=/srv/postgresql/data
#uci set postgresql.config.PGLOG=/srv/postgresql/data/postgresql.log
#uci commit
#echo 开始初始化postgresql系统数据库
#mkdir -p /srv/postgresql/data
#chown postgres /srv/postgresql/data
#sudo -u postgres initdb --pwprompt -D /srv/postgresql/data
/etc/init.d/postgresql enable
/etc/init.d/postgresql restart
/etc/init.d/postgresql info
sleep 2s
echo 开始初始化dlight-gateway应用数据库
sudo -u postgres psql -h 127.0.0.1 -f  ./modipwd.sql
sleep 2s
sudo -u postgres psql -h 127.0.0.1 -f  ./createdb.sql
sleep 2s
sudo -u postgres psql -h 127.0.0.1 -d light-gateway  -f  ./light-gateway.sql
sleep 2s
