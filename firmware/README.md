# About
I am using the following tools:
 - docker
 - arm-none-eabi-gcc
 - cmake and ccmake
 - ninja build system
 - cppcheck

`C++20` is the used `C++` standard.

# Build
```
[c]cmake -G Ninja -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain.cmake PROJECTDIR
```
The resulting binary files will be located in the `bin` folder.