FROM alpine:3.9.2

RUN echo http://dl-cdn.alpinelinux.org/alpine/v3.13/main >> /etc/apk/repositories && \
    echo http://dl-cdn.alpinelinux.org/alpine/v3.13/community >> /etc/apk/repositories && \
    echo @testing http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    apk add build-base gcc g++ ninja cmake clang clang-extra-tools gcc-arm-none-eabi@testing cppcheck
