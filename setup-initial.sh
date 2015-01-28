#!/bin/bash
apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
apt-get update
apt-get -y --ignore-missing install git-core pkg-config build-essential curl gcc g++ checkinstall openssh-server vim xclip p7zip-full p7zip-rar tree autojump

echo ">>>" 
echo ">>> Finished installing basics." 
echo ">>>"

if uname -a | grep VirtualBox 
then
    echo ">>>"
    echo ">>> Detected VirtualBox - installing guest additions"
    echo ">>>"
    
    sudo apt-get install linux-headers-$(uname -r)
    sudo apt-get install virtualbox-guest-x11
    
    echo ">>>"
    echo ">>> Finished installing guest additions"
    echo ">>>"
fi
