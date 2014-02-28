#!/bin/bash

export LC_ALL=C

myversion=`cat /etc/issue | grep -i "ubuntu 12.04"`
if [ -z "$myversion" ]; then
   echo -e "\n\nSorry, this SDK requires the Ubuntu 12.04 LTS !"
   echo -e "Please download ISO file and install from http://old-releases.ubuntu.com/releases/\n\n"
   exit 1
fi

if [ ! -x /usr/bin/git ]; then
   echo "Error : git not found!"
   echo "sudo apt-get install git-core"
   exit 1
fi

myhome=`pwd`
$myhome/64

echo ""
mkdir -p ~/sdk
cd ~/sdk

echo "-> Fetch JDK from OpenFoundry server..."
svn co -r 35 https://www.openfoundry.org/svn/my-shellscript/tools/jdk
echo ""
echo "-> Fetch toolchain from OpenFoundry server..."
svn co -r 1 http://svn.openfoundry.org/stanix/toolchain

cd /opt
sudo tar xvzf ~/sdk/toolchain/arm-2010.09.tgz
sudo tar xvzf ~/sdk/jdk/jdk1.6.0_37.tgz

sync

echo ""
echo "==> Toolchain has installed to /opt"
echo "==> Setup your SDK done!"
echo "==> you need set PATH by youself before start"
echo "==> PATH=/opt/arm-2010.09/bin:/opt/jdk1.6.0_37/bin:$PATH"

