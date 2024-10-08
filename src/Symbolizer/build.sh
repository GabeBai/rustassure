#!/bin/bash

rm -rf build
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ../ ;
make ;
sudo make install
