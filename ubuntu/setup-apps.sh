#!/bin/bash

echo ">>>"
echo ">>> Installing apps."
echo ">>>"

apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
apt-get update
apt-get -y --ignore-missing install git-core pkg-config build-essential curl gcc g++ checkinstall openssh-server vim xclip p7zip-full p7zip-rar tree autojump shellcheck fish terminator

echo ">>>"
echo ">>> Finished installing basics."
echo ">>>"

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get -y install nodejs

echo ">>>"
echo ">>> Finished installing node."
echo ">>>"

add-apt-repository ppa:webupd8team/atom
apt-get update
apt-get -y install atom

echo ">>>"
echo ">>> Finished installing atom."
echo ">>>"
