#!/bin/bash
_now=$(date +"%Y-%m-%d_%H.%M.%S")
apt-get update
apt-get install -y screen libtool pkg-config libncurses-dev libjansson-dev libusb-1.0-0-dev libusb-1.0-0-dev libusb-1.0-0 libcurl4-openssl-dev libncurses5-dev libudev-dev
mkdir /tmp/setup_cgminer/
mv * /tmp/setup_cgminer/
cd ..
rm -rf cgminer_setup/
chmod 755 /tmp/setup_cgminer/create_cgminer_cron.sh
/tmp/setup_cgminer/create_cgminer_cron.sh
cd ~
wget http://ck.kolivas.org/apps/cgminer/3.6/cgminer-3.6.6.tar.bz2
tar xvf cgminer-3.6.6.tar.bz2
mv cgminer-3.6.6/ cgminer/
rm -rf cgminer-3.6.6.tar.bz2
cd ~/cgminer/configure --enable-icarus
make
mv ~/cgminer/cgminer.conf ~/cgminer/cgminer.conf_$_now.bak
cp /tmp/setup_cgminer/cgminer.conf ~/cgminer/cgminer.conf