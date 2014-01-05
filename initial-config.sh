#!/bin/bash
apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:kilian/f.lux
apt-get update
apt-get -y install ia32-libs
apt-get -y install fluxgui
apt-get -y install libssl-dev git-core pkg-config build-essential curl gcc g++ checkinstall openssh-server vim xclip p7zip-full p7zip-rar
echo "Finished installing tools."

chmod +x git-config.sh
sh ./git-config.sh

cat ./bash_aliases >> ~/.bashrc
cat ./bash_prompt >> ~/.bashrc

echo "Finished adding preferences to bashrc"
