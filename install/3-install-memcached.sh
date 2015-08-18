#!/bin/bash

cd /web/env/soft/

tar zxvf memcached-1.4.15.tar.gz 
cd memcached-1.4.15/
./configure 
make
make install
cd /web/env/soft/
rm -rf memcached-1.4.15/

