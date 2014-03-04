#!/bin/bash
echo 'Installing node latest stable'

echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
mkdir ~/local
mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install

# Source our bash in order to have node at our path.
# Otherwise, the npm script will fail.
source $HOME/.bashrc

curl https://www.npmjs.org/install.sh | sh

echo ">>>" 
echo ">>> Finished installing node latest stable." 
echo ">>>"

