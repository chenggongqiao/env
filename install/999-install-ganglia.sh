#!/bin/bash

cd /web/env/soft/

tar zxvf confuse-2.7.tar.gz 
cd confuse-2.7/
./configure --prefix=/usr/local/confuse
make
make install
cd /web/env/soft/
rm -rf confuse-2.7/

tar zxvf pkg-config-0.28.tar.gz 
cd pkg-config-0.28/
./configure --prefix=/usr/local/pkg-config
make
make install
cd /web/env/soft/
rm -rf pkg-config-0.28/

tar zxvf expat-2.1.0.tar.gz 
cd expat-2.1.0/
./configure --prefix=/usr/local/expat
make
make install
cd /web/env/soft/
rm -rf expat-2.1.0/

tar zxvf pixman-0.32.6.tar.gz 
cd pixman-0.32.6/
./configure --prefix=/usr/local/pixman
make
make install
cd /web/env/soft/
rm -rf pixman-0.32.6/

tar zxvf fontconfig-2.11.93.tar.gz 
cd fontconfig-2.11.93/
./configure --prefix=/usr/local/fontconfig
make
make install
cd /web/env/soft/
rm -rf fontconfig-2.11.93/

tar xvf glib-2.39.92.tar.xz 
cd glib-2.39.92/
./configure --prefix=/usr/local/glib
make
make install
cd /web/env/soft/
rm -rf glib-2.39.92/

tar xvf cairo-1.14.2.tar.xz 
cd cairo-1.14.2/
./configure --prefix=/usr/local/cairo pixman_CFLAGS='-I/usr/local/pixman/include/pixman-1' pixman_LIBS='-L/usr/local/pixman/lib -lpixman-1' FONTCONFIG_CFLAGS='-I/usr/local/fontconfig/include' FONTCONFIG_LIBS='-L/usr/local/fontconfig/lib -lfontconfig' FREETYPE_CFLAGS='-I/usr/local/freetype/include -I/usr/local/freetype/include/freetype2' FREETYPE_LIBS='-L/usr/local/freetype/lib -lfreetype'
make
make install
cd /web/env/soft/
rm -rf cairo-1.14.2/

tar jxvf harfbuzz-0.9.40.tar.bz2
cd harfbuzz-0.9.40/
./configure --prefix=/usr/local/harfbuzz --with-glib=yes --with-freetype=yes --with-cairo=yes GLIB_CFLAGS='-I/usr/local/glib/include/glib-2.0 -I/usr/local/glib/lib/glib-2.0/include' GLIB_LIBS='-L/usr/local/glib/lib -lglib-2.0' CAIRO_CFLAGS='-I/usr/local/cairo/include/cairo' CAIRO_LIBS='-L/usr/local/cairo/lib -lcairo' FREETYPE_CFLAGS='-I/usr/local/freetype/include -I/usr/local/freetype/include/freetype2' FREETYPE_LIBS='-L/usr/local/freetype/lib -lfreetype'
make
make install
cd /web/env/soft/
rm -rf harfbuzz-0.9.40/

tar xvf pango-1.36.8.tar.xz
cd pango-1.36.8/
./configure --prefix=/usr/local/ --with-cairo=yes GLIB_CFLAGS='-I/usr/local/glib/include/glib-2.0 -I/usr/local/glib/lib/glib-2.0/include' GLIB_LIBS='-L/usr/local/glib/lib -lglib-2.0 -lgmodule-2.0 -lgio-2.0 -lgthread-2.0 -lgobject-2.0' CAIRO_CFLAGS='-I/usr/local/cairo/include/cairo' CAIRO_LIBS='-L/usr/local/cairo/lib -lcairo' FREETYPE_CFLAGS='-I/usr/local/freetype/include -I/usr/local/freetype/include/freetype2' FREETYPE_LIBS='-L/usr/local/freetype/lib -lfreetype' FONTCONFIG_CFLAGS='-I/usr/local/fontconfig/include' FONTCONFIG_LIBS='-L/usr/local/fontconfig/lib -lfontconfig' HARFBUZZ_CFLAGS='-I/usr/local/harfbuzz/include/harfbuzz' HARFBUZZ_LIBS='-L/usr/local/harfbuzz/lib -lharfbuzz'
make
make install
cd /web/env/soft/
rm -rf pango-1.36.8/

tar zxvf rrdtool-1.5.0.tar.gz
cd rrdtool-1.5.0/
./configure --prefix=/usr/local/rrdtool
make 
make install
cd /web/env/soft/
rm -rf rrdtool-1.5.0/



