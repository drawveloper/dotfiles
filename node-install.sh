#!/bin/bash
ver="0.10.5"
echo Installing node version $ver
wget http://nodejs.org/dist/v$ver/node-v$ver.tar.gz
tar -zxf node-v$ver.tar.gz
cd node-v$ver
sudo ./configure && make && checkinstall --install=yes --pkgname=nodejs --pkgversion "$ver" --default
