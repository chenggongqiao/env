#!/bin/bash

cd /web/env/soft/

easy_install supervisor
rm -rf /etc/supervisord.conf
echo_supervisord_conf > /etc/supervisord.conf

rm -rf /etc/supervisord.conf
ln -s /web/deploy/etc/supervisor/supervisord.conf /etc/supervisord.conf
rm -rf /etc/supervisord.conf.d
mkdir -p /etc/supervisord.conf.d
rm -rf /etc/supervisord.conf.d/base
ln -s /web/deploy/etc/supervisor/base /etc/supervisord.conf.d/base
rm -rf /etc/supervisord.conf.d/shitouren
ln -s /web/deploy/etc/supervisor/shitouren /etc/supervisord.conf.d/shitouren

