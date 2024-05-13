#!/bin/sh

mkdir -p ~/.p2p/program
mkdir -p ~/.p2p/l2
mkdir -p ~/.p2p/cli

cp ./program/* ~/.p2p/program/.
cp ./l2/* ~/.p2p/l2/.
cp ./cli/* ~/.p2p/cli/.

export PATH=$PATH:~/.p2p/cli:~/.p2p/l2
