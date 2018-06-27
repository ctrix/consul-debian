#!/bin/bash

#set -x

# This script is an utility to automate the building of the consul package.

sudo apt-get -y install dpkg-dev debhelper dh-systemd devscripts libwww-perl

rm -f ../consul*.orig.tar.gz
uscan -v --download-current-version
FILE=`ls -1 ../consul*.orig.tar.gz`
tar zxvf ../consul*.orig.tar.gz --strip 0

dpkg-buildpackage -us -uc -b
debian/rules clean
