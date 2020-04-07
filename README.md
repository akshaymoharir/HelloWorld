## HelloWorld in C++

## Overview

Hello World project using CMake

This is a hello world C++ project created using CMake and Docker.

Script `buildAndRunHelloWorld.sh` has following implementation:

- build docker image with `--no-cache` mode 
- run a docker container from image built in above step 
- build code and execute it within the same environment
- And copy built binaries back to the host computer


## How to build
A script has been provided that builds Hello World app for macOS and for linux as well.

Run script `buildAndRunHelloWorld.sh` from a terminal window.
- `cd < root of this repo >/BuildScript`
- `./buildAndRunHelloWorld.sh` 
