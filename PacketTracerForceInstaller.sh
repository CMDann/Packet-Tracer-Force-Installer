#!/bin/bash

# PacketTracer Installer
# Written by K. Law @ http://kaslit.com
# Modified by D. Blair http://www.CMDann.ca
#
# PcketTracer is software by Cisco
#
# This script will aid in the installation of the cisco packet tracer

echo "Installing all required Libraries"
apt-get -y install ia32-libs-gtk

echo "Moving files and doing sciency stuff "
cp -v /tmp/selfextract.*/Packet* ./

echo "Successful"
echo "Installing Package Libraries"
echo "Running the important files"
dpkg -i --force-architecture Packet*.deb

echo "PacketTracer is installed!"
echo "Applying system libs"
getlibs /usr/local/PacketTracer5/bin/PacketTracer5

echo "PacketTracer installation should be complete"
echo "This script does not detect errors, if for some reason the installer dosen't install correctly try downloading a new bin from the Cisco network academy website."
echo "Running PacketTracer"
echo "If PacketTracer didn't install look for the ia32-libs-gtk file in the Debian/Ubuntu repositories. This file is the important one for a successful install." > ~/PacketTracer_README_IF_IT_FAILED.txt
/usr/local/PacketTracer5/packettracer
