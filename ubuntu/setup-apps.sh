#!/bin/bash
apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
apt-get update
apt-get -y --ignore-missing install git-core pkg-config build-essential curl gcc g++ checkinstall openssh-server vim xclip p7zip-full p7zip-rar tree autojump python-pip python-dev shellcheck fish nodejs

echo ">>>"
echo ">>> Finished installing basics."
echo ">>>"
