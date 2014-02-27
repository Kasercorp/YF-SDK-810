#!/bin/bash

echo "Install Android 4.0.4-1.6 SDK"

mkdir -p 4.0.4-1.6_SDK

if [ -x 4.0_SDK/build.sh ]; then
   cp -a 4.0_SDK/build.sh 4.0.4-1.6_SDK/
else
   echo "You need install 810 SDK before upgrade to 4.0.4-1.6"
   exit 1
fi

cd 4.0.4-1.6_SDK
mypath=`pwd`

wget --version > /dev/null 2>&1
if [ $? == 0 ]; then
   echo "wget found"
else
   echo "wget not found!"
   exit 1
fi

git --version > /dev/null 2>&1
if [ $? == 0 ]; then
   echo "git found"
else
   echo "git not found!"
   exit 1
fi
