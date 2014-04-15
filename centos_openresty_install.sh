#!/bin/bash

yum install -y gcc gcc-c++ tcl perl readline-devel pcre-devel openssl-devel
groupadd nginx
useradd -g nginx nignx
wget http://openresty.org/download/ngx_openresty-1.5.11.1.tar.gz
tar xzf ngx_openresty-1.5.11.1.tar.gz
cd ngx_openresty-1.5.11.1
./configure --prefix=/opt/openresty-1.5.11.1 --with-luajit --with-http_iconv_module --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock --user=nginx --group=nginx  --conf-path=/home/nginx/conf/nginx.conf --error-log-path=/home/nginx/logs/error.log --http-log-path=/home/nginx/logs/access.log
gmake && gmake install
