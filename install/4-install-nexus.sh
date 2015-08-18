#!/bin/bash

mkdir -p /data/nexus/

cd /web/env/soft/

tar zxvf nexus-2.8.1-01-bundle.tar.gz -C /data/nexus/

ln -s /data/nexus/nexus-2.8.1-01 /data/nexus/nexus-latest
ln -s /data/nexus /usr/local/nexus

rm -rf /data/nexus/nexus-2.8.1-01/bin/jsw/conf/wrapper.conf
ln -s /web/deploy/etc/nexus/wrapper.conf /data/nexus/nexus-2.8.1-01/bin/jsw/conf/wrapper.conf

rm -rf /data/nexus/nexus-2.8.1-01/conf/logback-access.xml
ln -s /web/deploy/etc/nexus/logback-access.xml /data/nexus/nexus-2.8.1-01/conf/logback-access.xml

rm -rf /data/nexus/nexus-2.8.1-01/conf/nexus.properties
ln -s /web/deploy/etc/nexus/nexus.properties /data/nexus/nexus-2.8.1-01/conf/nexus.properties

mkdir -p /data/nexus/sonatype-work/nexus/conf/
rm -rf /data/nexus/sonatype-work/nexus/conf/logback.properties
ln -s /web/deploy/etc/nexus/logback.properties /data/nexus/sonatype-work/nexus/conf/logback.properties

