FROM ubuntu:20.04

RUN apt update && apt upgrade -y && \
    apt install wget unzip gcc g++ clang clang-tools cppcheck -y && \
    mkdir tools && cd tools && \
    wget https://github.com/Kitware/CMake/releases/download/v3.19.6/cmake-3.19.6-Linux-x86_64.sh && \
    chmod +x cmake-3.19.6-Linux-x86_64.sh && mkdir cmake && \
    ./cmake-3.19.6-Linux-x86_64.sh --skip-license --exlude-subdir --prefix=cmake && \
    rm ./cmake-3.19.6-Linux-x86_64.sh && \
    wget https://github.com/ninja-build/ninja/releases/download/v1.10.2/ninja-linux.zip && \
    unzip ninja-linux.zip -d ninja && \
    wget -O arm-gcc.tar.bz2 "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2?revision=ca0cbf9c-9de2-491c-ac48-898b5bbc0443&la=en&hash=68760A8AE66026BCF99F05AC017A6A50C6FD832A" && \
    tar -xf arm-gcc.tar.bz2 && rm arm-gcc.tar.bz2

ENV PATH="/tools/cmake/bin:/tools/ninja:/tools/gcc-arm-none-eabi-10-2020-q4-major/bin:${PATH}"

# Alpine Config, doesn't work because of the toolchain. The one in the testing
# repository doesn't have the relevant specs files. The pre-built toolchain from 
# arm directly doesn't run because it is linked against libc, whilst alpine uses
# musl as its libc implementation. I don't want to go through the hassle of 
# setting libc up in an alpine container, nor can i compile the toolchain from 
# source because it takes more than 5 hours on my computer.
# FROM alpine:3.9.2

# RUN echo http://dl-cdn.alpinelinux.org/alpine/v3.13/main >> /etc/apk/repositories && \
# echo http://dl-cdn.alpinelinux.org/alpine/v3.13/community >> /etc/apk/repositories && \
# echo @testing http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
# apk update && apk upgrade && \
# apk add build-base gcc g++ ninja cmake clang clang-extra-tools gcc-arm-none-eabi@testing cppcheck
