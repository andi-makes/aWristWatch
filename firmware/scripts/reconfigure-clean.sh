#!/bin/bash

cd $1
ls -A | xargs rm -rf
ccmake -G Ninja -DCMAKE_TOOLCHAIN_FILE=$2/cmake/toolchain.cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON $2