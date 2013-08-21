#!/bin/bash
# Download rpm's
#~sid

for file in \
        elfutils-0.125-3.el5.i386.rpm \
        elfutils-libs-0.125-3.el5.i386.rpm \
        expat-1.95.8-8.2.1.i386.rpm \
        gmp-4.1.4-10.el5.i386.rpm \
        libxml2-2.6.26-2.1.2.1.i386.rpm \
        libxml2-python-2.6.26-2.1.2.1.i386.rpm \
        m2crypto-0.16-6.el5.2.i386.rpm \
        python-2.4.3-21.el5.i386.rpm \
        python-elementtree-1.2.6-5.i386.rpm \
        python-iniparse-0.2.3-4.el5.noarch.rpm \
        python-sqlite-1.1.7-1.2.1.i386.rpm \
        python-urlgrabber-3.1.0-2.noarch.rpm \
        readline-5.1-1.1.i386.rpm \
        rpm-4.4.2-48.el5.i386.rpm \
        rpm-libs-4.4.2-48.el5.i386.rpm \
        rpm-python-4.4.2-48.el5.i386.rpm \
        sqlite-3.3.6-2.i386.rpm \
        yum-3.2.8-9.el5.centos.1.noarch.rpm \
        yum-metadata-parser-1.1.2-2.el5.i386.rpm
  do wget http://mirror.centos.org/centos-5/5/os/i386/CentOS/$file;
done
