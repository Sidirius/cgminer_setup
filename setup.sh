#!/bin/bash
_now=$(date +"%Y-%m-%d_%H.%M.%S")
apt-get update
apt-get screen install libtool pkg-config libncurses-dev libjansson-dev libusb-1.0-0-dev libusb-1.0-0-dev libusb-1.0-0 libcurl4-openssl-dev libncurses5-dev libudev-dev
chmod 755 create_cgminer_cron.sh
./create_cgminer_cron.sh
mkdir ~/cgminer/
cp cgminer.conf ~/cgminer/cgminer.conf
cd ~
wget http://ck.kolivas.org/apps/cgminer/3.6/cgminer-3.6.6.tar.bz2
tar xvf cgminer-3.6.6.tar.bz2
mv cgminer-3.6.6/ cgminer/
cd cgminer/
./configure --enable-icarus
make