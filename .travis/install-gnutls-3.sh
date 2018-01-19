#!/bin/bash

sudo apt-get -qq update
sudo apt-get install -y build-essential nettle-dev libgmp-dev
wget ftp://ftp.gnutls.org/gcrypt/gnutls/v3.1/gnutls-3.1.23.tar.xz
tar -xf gnutls-3.1.23.tar.xz
pushd gnutls-3.1.23
./configure \
    && make -j2 \
    && sudo make install \
    && sudo ln -s /usr/local/lib/libgnutls.so.28 /usr/lib/libgnutls.so.28
popd
