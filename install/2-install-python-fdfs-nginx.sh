#!/bin/bash

cd /web/env/soft/

#------ python and python_packages --------

tar zxvf Python-2.7.9.tgz 
cd Python-2.7.9
./configure 
make
make install
cd /web/env/soft/
rm -rf Python-2.7.9/

tar zxvf setuptools-18.1.tar.gz 
cd setuptools-18.1/
python setup.py build
python setup.py install
cd /web/env/soft/
rm -rf setuptools-18.1

tar zxvf pip-6.0.8.tar.gz 
cd pip-6.0.8/
python setup.py install
cd /web/env/soft/
rm -rf pip-6.0.8/

#------ fastdfs --------

tar xvf libfastcommon.tar.gz
cd libfastcommon/
sh make.sh 
sh make.sh install
cd /web/env/soft/
rm -rf libfastcommon/

tar xvf FastDFS_v5.05.tar 
cd FastDFS/
sh make.sh 
sh make.sh install

cd /web/env/soft/
tar zxvf FastDFSClient_Python_1.2.0.tar.gz 
cp -R FastDFSClient_Python_1.2.0/ClientForPython FastDFS/client/
cd FastDFS/client/ClientForPython
cp json/lib/* /usr/local/lib/
ldconfig
make

rm -rf /web/deploy/lib/FDFSPythonClient.so
cp FDFSPythonClient.so /web/deploy/lib/
cd /web/env/soft/
rm -rf FastDFSClient_Python_1.2.0/

cd /web/env/soft/
rm -rf FastDFS/

rm -rf /etc/fdfs
ln -s /web/deploy/etc/fdfs /etc/fdfs

#------ nginx with fastdfs_module and openssl_module --------

tar xvzf fastdfs-nginx-module_v1.16_patch.tar.gz
tar zxvf openssl-1.0.1p.tar.gz 
tar xvzf nginx-1.6.3.tar.gz

cd nginx-1.6.3/
./configure --prefix=/usr/local/nginx --with-http_ssl_module --with-http_flv_module --with-http_stub_status_module --with-http_gzip_static_module --with-pcre --add-module=/web/env/soft/fastdfs-nginx-module/src --with-openssl=/web/env/soft/openssl-1.0.1p
make
make install
cd /web/env/soft/

rm -rf nginx-1.6.3/
rm -rf fastdfs-nginx-module/
rm -rf openssl-1.0.1p/

echo "export PATH=\$PATH:/usr/local/nginx/sbin" >> ~/.bash_profile
htpasswd -bc /web/deploy/etc/htpasswd shitouren Shitouwangzi001

rm -rf /usr/local/nginx/conf/nginx.conf
ln -s /web/deploy/etc/nginx/nginx.conf /usr/local/nginx/conf/nginx.conf
rm -rf /usr/local/nginx/conf/nginx.conf.d/nginx.test.conf
ln -s /web/deploy/etc/nginx/nginx.test.conf /usr/local/nginx/conf/nginx.conf.d/nginx.test.conf
rm -rf /usr/local/nginx/conf/nginx.conf.d/base
ln -s /web/deploy/etc/nginx/base /usr/local/nginx/conf/nginx.conf.d/base
rm -rf /usr/local/nginx/conf/nginx.conf.d/shitouren
ln -s /web/deploy/etc/nginx/shitouren /usr/local/nginx/conf/nginx.conf.d/shitouren

