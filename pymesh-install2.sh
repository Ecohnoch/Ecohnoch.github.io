#!/bin/sh
apt-get update
apt-get install python3 libpython3-dev virtualenv git cmake swig gcc g++ libeigen3-dev libgmp-dev libmpfr-dev libboost-thread-dev libboost-dev
virtualenv --python=python3 ~/tmp
source ~/tmp/bin/activate
git clone https://github.com/qnzhou/PyMesh.git
cd PyMesh/
pip install -r python/requirements.txt 
git submodule init
git submodule update
cd third_party/
mkdir build
cd build/
cmake ..
make -j 2
make install
cd ../../
mkdir build
cd build/
cmake ..
make -j 2
make -j 2 tools
cd ..
./setup.py install --user