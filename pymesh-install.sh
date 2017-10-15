#!/bin/sh
cd ~
sudo apt-get install python-numpy
sudo apt-get install python-scipy
sudo apt-get install python-nose
sudo apt-get install g++
sudo apt-get install libpcre3 libpcre3-dev
sudo apt-get install cmake
sudo apt-get install swig
sudo apt-get install libeigen3-dev
sudo apt-get install libgmp-dev
sudo apt-get install libmpfr-dev
git clone https://github.com/qnzhou/PyMesh.git
git submodule update --init
export PYMESH_PATH=~/PyMesh
cd $PYMESH_PATH/third_party
mkdir build
cd build
cmake ..
make
make install
cd $PYMESH_PATH
mkdir build
cd build
cmake ..
make
make src_tests
make tools
make tools_tests
cd $PYMESH_PATH
./setup.py build
./setup.py install
python -c "import pymesh; pymesh.test()"