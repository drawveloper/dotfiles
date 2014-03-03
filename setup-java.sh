#!/bin/bash
add-apt-repository -y ppa:webupd8team/java
apt-get update
apt-get -y install oracle-java7-installer

echo ">>>" 
echo ">>> Finished installing Java."
echo ">>>"
