#!/bin/bash
mkdir -p /data
tar -zxvf light-gateway-admin.tar.gz -C /data/
mkdir -p /etc/nginx/html/
unzip dist.zip -d /etc/nginx/html/
mv /etc/nginx/html/dist  /etc/nginx/html/light-gateway
cp nginx.conf /etc/nginx/conf.d/
/etc/init.d/nginx restart
