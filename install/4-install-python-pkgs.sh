#!/bin/bash

cd /web/env/soft/

tar zxvf tornado-2.4.1.tar.gz
cd tornado-2.4.1/
python setup.py build
python setup.py install
cd ../
cd /web/env/soft/
rm -rf tornado-2.4.1/

tar zxvf python-memcached-1.31.tar.gz 
cd python-memcached-1.31/
python setup.py install
cd /web/env/soft/
rm -rf python-memcached-1.31/

tar zxvf redis-py.tar.gz 
cd redis-py/
python setup.py install
cd /web/env/soft/
rm -rf redis-py/

tar zxvf psycopg2-2.5.tar.gz 
cd psycopg2-2.5/
python setup.py install
cd /web/env/soft/
rm -rf psycopg2-2.5/

tar zxvf pymongo-2.5.tar.gz 
cd pymongo-2.5/
python setup.py install
cd /web/env/soft/
rm -rf pymongo-2.5/

tar zxvf simplejson-3.5.3.tar.gz 
cd simplejson-3.5.3/
python setup.py build
python setup.py install
cd /web/env/soft/
rm -rf simplejson-3.5.3/

tar zxvf Pillow-2.8.1.tar.gz
cd Pillow-2.8.1/
python setup.py build
python setup.py install
cd /web/env/soft/
rm -rf Pillow-2.8.1/

tar zxvf flup-1.0.2.tar.gz 
cd flup-1.0.2/
python setup.py install
cd /web/env/soft/
rm -rf flup-1.0.2/

tar zxvf MySQL-python-1.2.4b4.tar.gz
cd MySQL-python-1.2.4b4
python setup.py install
cd /web/env/soft/
rm -rf MySQL-python-1.2.4b4/

tar zxvf SQLAlchemy-0.9.3.tar.gz 
cd SQLAlchemy-0.9.3
python setup.py install
cd /web/env/soft/
rm -rf SQLAlchemy-0.9.3/

tar zxvf tld-0.6.1.tar.gz 
cd tld-0.6.1/
python setup.py install
cd /web/env/soft/
rm -rf tld-0.6.1/

tar zxvf httpagentparser-1.7.7.tar.gz
cd httpagentparser-1.7.7/
python setup.py install
cd /web/env/soft/
rm -rf httpagentparser-1.7.7/

tar zxvf celery-3.1.18.tar.gz
cd celery-3.1.18/
python setup.py build
python setup.py install
cd /web/env/soft/
rm -rf celery-3.1.18/

tar zxvf tornado-celery-0.3.4.tar.gz
cd tornado-celery-0.3.4
python setup.py build
python setup.py install
cd /web/env/soft/
rm -rf tornado-celery-0.3.4

tar zxvf python-requests.tar.gz
cd kennethreitz-requests-2440b6f
python setup.py build
python setup.py install
cd /web/env/soft/
rm -rf kennethreitz-requests-2440b6f

