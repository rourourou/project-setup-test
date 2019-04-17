#!/bin/bash

set -x
set -e

mkdir $TRAVIS_BUILD_DIR/cmake-build && cd $TRAVIS_BUILD_DIR/cmake-build
cmake $TRAVIS_BUILD_DIR
cmake --build . -- -j $(nproc)