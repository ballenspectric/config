#!/bin/sh

sudo apt install libreadline-dev libssl-dev libbz2-dev libsqlite3-dev libuuid-dev

git clone -b v3.10.8 https://github.com/python/cpython.git
pushd cpython
./configure --prefix=$HOME/.local
make -j8
make altinstall
