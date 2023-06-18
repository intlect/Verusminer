#!/usr/bin/env bash

# Simple script to create the Makefile and build

if [[ $OSTYPE == 'darwin'* ]]; then
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
fi

make distclean || echo clean

rm -f Makefile.in
rm -f config.status
./autogen.sh || echo done

# CFLAGS="-O2" ./configure
./configure.sh

make && clear; echo -e "\n\e[32mCompilation successful!. Run ./ccminer\e[0m\n"
