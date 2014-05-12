#!/usr/bin/env bash

# get the patch tarball and untar it
wget -O ubuntu-ltib-patch.tgz https://community.freescale.com/servlet/JiveServlet/downloadBody/93454-102-1-2824/ubuntu-ltib-patch.tgz
tar -xzvf ubuntu-ltib-patch.tgz

# execute the script which do the patching
ltibDir=`pwd`
cd ubuntu-ltib-patch
./install-patches.sh $ltibDir
