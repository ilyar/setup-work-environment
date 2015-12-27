#!/usr/bin/env bash

# VirtualBox fix After Update
# http://askubuntu.com/a/465455

sudo dpkg-reconfigure virtualbox-dkms
sudo dpkg-reconfigure virtualbox
sudo modprobe vboxdrv

sudo modprobe vboxnetflt

VBoxManage --version