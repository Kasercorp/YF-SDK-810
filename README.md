YF810/820 SDK
=============

This SDK included YF 810/815/820/825 platforms

Kloud Development (Public SDK)
==============================

## 1. Hardware requirement:

   - Intel i3 + 8GB RAM + 16GB swap memory ( compile takes 2-3 hours)
   - Intel E8400 + 2GB RAM + 16GB swap memory (compile takes 6-7 hours)
   - Intel i7 + 16 GB RAM + 32GB swap memory + SATA III + RAID 0 would be 
   - perfect (not test yet)

## 2. OS requirement:

    YF810/815   
    Ubuntu 10.04 LTS (32/64) Desktop or Server 
    
    YF820/825
    Ubuntu 12.04 64-bit Desktop or Server 
    
    Please download from  http://old-releases.ubuntu.com/releases/

## 3. How to setup the SDK environment:

### YF810/815
 
   Ubuntu 10.04 32-bit

   ./install-810-sdk-32bit.sh

   Ubuntu 10.04 64-bit
   
   ./install-810-sdk-64bit.sh

### YF815/825
   
   Ubuntu 12.04 64-bit

   git fetch origin
   git checkout -b YF820-SDK origin/YF820-SDK

   checkout YF820-SDK branch

## 4. Please install JDK from 
    
   http://github.com/flexiondotorg/oab-java6

   git clone https://github.com/flexiondotorg/oab-java6.git


## 5. How to build your Android:

   go to 4.0_SDK then execute ./build.sh



