#!/bin/bash

mkdir -p /data/mysql

cd /web/env/soft/

tar zxvf ncurses.tar.gz 
cd ncurses-5.9/
./configure
make
make install
cd /web/env/soft/
rm -rf ncurses-5.9/

tar zxvf mysql-5.6.16.tar.gz 
cd mysql-5.6.16
cmake .
make
make install
cd /web/env/soft/
rm -rf mysql-5.6.16/
/usr/local/mysql/scripts/mysql_install_db --user=root --basedir=/usr/local/mysql --datadir=/data/mysql
ln -s /usr/local/mysql/lib/libmysqlclient.so.18 /usr/lib/libmysqlclient.so
ln -s /usr/local/mysql/lib/libmysqlclient.so.18 /usr/lib/libmysqlclient.so.18
ldconfig

rm -rf /etc/my.cnf
ln -s /web/deploy/etc/my.cnf /etc/my.cnf

