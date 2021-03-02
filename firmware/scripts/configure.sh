#!/bin/bash

mkdir $1
cd $1
ccmake -G Ninja -DCMAKE_TOOLCHAIN_FILE=$2/cmake/toolchain.cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON $2