#!/bin/bash

mkdir -p /data/redis

cd /web/env/soft/

tar zxvf redis-2.6.12.tar.gz 
cd redis-2.6.12
make
make install
cd /web/env/soft/
rm -rf redis-2.6.12

