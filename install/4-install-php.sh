#!/bin/bash

cd /web/env/soft/

tar zxvf php-5.6.7.tar.gz
cd php-5.6.7
./configure --prefix=/usr/local/php \
--with-config-file-path=/usr/local/php/etc \
--with-config-file-scan-dir=/usr/local/php/etc/conf.d \
--with-libxml-dir=/usr/local/libxml2 \
--with-freetype-dir=/usr/local/freetype \
--with-bz2 \
--with-curl \
--with-gd \
--with-gettext \
--with-ncurses \
--with-iconv-dir \
--with-jpeg-dir \
--with-mhash \
--with-mysql \
--with-mysqli \
--with-openssl \
--with-pdo-mysql \
--with-pear \
--with-png-dir \
--with-zlib \
--enable-bcmath \
--enable-calendar \
--enable-exif \
--enable-fpm \
--enable-ftp \
--enable-gd-native-ttf \
--enable-mbstring \
--enable-soap \
--enable-sysvmsg \
--enable-sysvsem \
--enable-sysvshm \
--enable-zip

make
make install
cd /web/env/soft/
rm -rf php-5.6.7/

ln -s /web/deploy/etc/php/php.ini /usr/local/php/etc/php.ini
ln -s /web/deploy/etc/php/php-fpm.conf /usr/local/php/etc/php-fpm.conf

