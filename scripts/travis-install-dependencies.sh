#!/bin/sh
# installs necessary dependencies
# - Eigen3 -> 3.3.4
# - CMake 3.11 -> 3.11.1

set -x 				# debug mode
set -e 				# exit immediately if a command exits with non-zero status

LOCAL_INSTALL=$1 	# install root dir, first and only argument

CACHE_EIGEN_TOKEN=$LOCAL_INSTALL/done-eigen3
CACHE_CMAKE_TOKEN=$LOCAL_INSTALL/done-cmake

EIGEN_URL=http://bitbucket.org/eigen/eigen/get/3.3.4.tar.bz2
CMAKE_URL=https://cmake.org/files/v3.11/cmake-3.11.1-Linux-x86_64.tar.gz

# Download and extract Eigen
if [ ! -f $CACHE_EIGEN_TOKEN ]; then
	rm -rf $LOCAL_INSTALL/eigen3
	mkdir $LOCAL_INSTALL/eigen3

	# download Eigen, '-O -': write to stdout and pipe to tar
	wget -nv ${EIGEN_URL} -O - | tar xj -C $LOCAL_INSTALL/eigen3 --strip-components=1

	# Create token for caching
	touch $CACHE_EIGEN_TOKEN
fi

# Download CMake
if [ ! -f $CACHE_CMAKE_TOKEN ]; then
	rm -rf $LOCAL_INSTALL/cmake 
	mkdir $LOCAL_INSTALL/cmake

	wget -nv ${CMAKE_URL} --no-check-certificate -O - | tar xz -C $LOCAL_INSTALL/cmake --strip-components=1 
	$LOCAL_INSTALL/cmake/bin/cmake --version
	touch $CACHE_CMAKE_TOKEN
fi
