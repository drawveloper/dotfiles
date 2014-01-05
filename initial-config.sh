#!/bin/bash
apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
add-apt-repository -y ppa:webupd8team/java
if [ $1 != "small" ]
  then
    add-apt-repository -y ppa:kilian/f.lux
fi

apt-get update

apt-get -y install libssl-dev git-core pkg-config build-essential curl gcc g++ checkinstall openssh-server vim xclip ia32-libs p7zip-full p7zip-rar

if [ $1 != "small" ]
  then
    apt-get -y install fluxgui
fi

apt-get -y install oracle-java7-installer

echo "Finished installing tools."

chmod +x git-config.sh
sh ./git-config.sh

cat ./bash_aliases >> ~/.bashrc
cat ./bash_prompt >> ~/.bashrc

echo "Finished adding preferences to bashrc"