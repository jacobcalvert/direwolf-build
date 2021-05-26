#!/bin/bash

echo "Building Direwolf from git @ $TAG"

cd /opt/source

git clone https://github.com/wb2osz/direwolf.git direwolf

cd direwolf

git checkout $TAG

cd /opt/source

mkdir build 

cd build

cmake /opt/source/direwolf

make 
