#!/bin/bash

mkdir -p /data/mongodb

cd /web/env/soft/

tar zxvf mongodb-linux-x86_64-rhel62-3.0.2.tgz 
rm -rf /usr/local/mongodb
mv mongodb-linux-x86_64-rhel62-3.0.2 /usr/local/mongodb
cd /web/env/soft/

rm -rf /etc/mongod.conf
ln -s /web/deploy/etc/mongod.conf /etc/mongod.conf

