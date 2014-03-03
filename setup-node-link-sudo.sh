#!/bin/bash

# Check if node is installed
if hash node 2>/dev/null; then
    ln -s $HOME/local/bin/node /usr/bin/node
    ln -s $HOME/local/lib/node /usr/lib/node
    ln -s $HOME/local/bin/npm /usr/bin/npm
    ln -s $HOME/local/bin/node-waf /usr/bin/node-waf

    echo ">>>" 
    echo ">>> Finished linking node to /usr/bin." 
    echo ">>>"
else
    echo ">>> Node is not installed. Can't link."
fi


