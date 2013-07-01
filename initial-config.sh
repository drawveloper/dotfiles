#!/bin/bash
apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:mitya57
add-apt-repository -y ppa:kilian/f.lux
apt-get update
apt-get -y install libssl-dev git-core pkg-config build-essential curl gcc g++ checkinstall openssh-server retext vim-gnome gnome-panel xclip ia32-libs fluxgui
apt-get -y install oracle-java7-installer

