#!/bin/sh

set -ex

rm /usr/local/include/c++
brew install gcc6
CC=gcc-6
CXX=g++-6;
CFLAGS="-m64"
LDFLAGS="-m64"

set +ex
