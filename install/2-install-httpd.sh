#!/bin/bash

cd /web/env/soft/

tar zxvf apr-1.5.1.tar.gz 
cd apr-1.5.1/
./configure --prefix=/usr/local/apr 
make
make install
cd /web/env/soft/
rm -rf apr-1.5.1/

tar zxvf apr-util-1.5.4.tar.gz 
cd apr-util-1.5.4
./configure --prefix=/usr/local/apr-util --with-apr=/usr/local/apr
make 
make install
cd /web/env/soft/
rm -rf apr-util-1.5.4/

tar zxvf pcre-8.32.tar.gz 
cd pcre-8.32/
./configure 
make
make install
cd /web/env/soft/
rm -rf pcre-8.32/
ln -s /lib64/libpcre.so.0.0.1 /lib64/libpcre.so.1

tar zxvf httpd-2.4.12.tar.gz 
cd httpd-2.4.12/
./configure --prefix=/usr/local/httpd  --enable-so --enable-rewrite --with-apr=/usr/local/apr --with-apr-util=/usr/local/apr-util
make
make install
cd /web/env/soft/
rm -rf httpd-2.4.12/

rm -rf /usr/local/httpd/conf/httpd.conf
ln -s /web/deploy/etc/httpd/httpd.conf /usr/local/httpd/conf/httpd.conf

