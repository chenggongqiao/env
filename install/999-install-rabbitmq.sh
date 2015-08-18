#!/bin/bash

cd /web/env/soft/
tar zxvf rabbitmq-server-generic-unix-3.5.3.tar.gz

mv rabbitmq_server-3.5.3/ /usr/local/

echo "export PATH=\$PATH:/usr/local/rabbitmq_server-3.5.3/sbin" >> ~/.bash_profile
ln -s /web/deploy/etc/rabbitmq/rabbitmq.conf /etc/rabbitmq/

rabbitmqctl add_vhost /app
rabbitmqctl add_user shitouren UWvQC724myihbJSpmkoH
rabbitmqctl delete_user guest
rabbitmqctl set_user_tags shitouren administrator
rabbitmqctl set_permissions -p /app shitouren ".*" ".*" ".*"
