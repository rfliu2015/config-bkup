#!/bin/bash

# Script to install hdf5 and netCDF4 libraries on a Linux Ubuntu system
# After: https://code.google.com/p/netcdf4-python/wiki/UbuntuInstall
# And http://unidata.github.io/netcdf4-python/ 

# You can check for newer version of the programs on 
# ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-4/
# and other sources

ZSHRC="~/.zshrc"
# Install zlib
v=1.2.11  
cd zlib-${v}
./configure --prefix=/usr/local
#sudo make check install
sudo make install
cd ..

# Install HDF5
v=1.10.4
cd hdf5-${v}
prefix="/usr/local/hdf5-$v"
if [ $HDF5_DIR != $prefix ]; then
    echo "Add HDF5_DIR=$prefix to .zshrc"
    echo "" >> $ZSHRC
    echo "# HDF5 libraries for python" >> $ZSHRC
    echo export HDF5_DIR=$prefix  >> $ZSHRC
fi
./configure --enable-shared --enable-hl --prefix=$HDF5_DIR
make -j 2 # 2 for number of procs to be used
sudo make install
cd ..

# Install Netcdf
v=4.6.2
cd netcdf-c-${v}
prefix="/usr/local/"
if [ $NETCDF4_DIR != $prefix ]; then
    echo "Add NETCDF4_DIR=$prefix to .zshrc"
    echo "" >> $ZSHRC
    echo "# NETCDF4 libraries for python" >> $ZSHRC
    echo export NETCDF4_DIR=$prefix  >> $ZSHRC
fi
CPPFLAGS=-I$HDF5_DIR/include LDFLAGS=-L$HDF5_DIR/lib ./configure --enable-netcdf-4 --enable-shared --enable-dap --prefix=$NETCDF4_DIR
# make check
make 
sudo make install
cd ..
