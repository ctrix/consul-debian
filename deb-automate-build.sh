#!/bin/bash

#set -x

# This script is an utility to automate the building of the consul package.

sudo apt-get update
sudo apt-get --no-install-recommends --no-install-suggests \
    -y install devscripts tar dpkg-dev debhelper dh-systemd libwww-perl gnupg2

rm -f ../consul*.orig.tar.gz
uscan -v --download-current-version
FILE=`ls -1 ../consul*.orig.tar.gz`
tar zxvf ../consul*.orig.tar.gz --strip 0

dpkg-buildpackage -us -uc -b --ignore-builtin-builddeps
debian/rules clean
