#!/bin/bash

# Script to install binary package of LLVM 6.0.0 and then SVN source of
# llvm-openmp

set -ev

wget http://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz
tar -xvf clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz
loc=`pwd`
path=$loc"/clang+llvm-6.0.0-x86_64-apple-darwin"
export PATH=$path"/bin":$PATH
export LD_LIBRARY_PATH=$path"/lib":$LD_LIBRARY_PATH
export C_INCLUDE_PATH=$path"/include":$C_INCLUDE_PATH
export CC=$path"/bin/clang"
svn co http://llvm.org/svn/llvm-project/openmp/trunk openmp
mkdir openmp-build && cd openmp-build
cmake ../openmp
make
make install
cd ../

set +ev
