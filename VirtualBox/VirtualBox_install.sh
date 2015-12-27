#!/usr/bin/env bash

# VirtualBox
# TODO uninstall VirtualBox

codename=$(lsb_release --codename | cut -f2)

if [ $(which vboxmanage) ];
then

  echo "VirtualBox already installed"
  vboxmanage list extpacks

else

  # Install VirtualBox
  echo deb http://download.virtualbox.org/virtualbox/debian $codename contrib | sudo tee /etc/apt/sources.list.d/virtualbox.list 
  wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
  sudo apt-get update 
  sudo apt-get install -y virtualbox-5.0
  ./VirtualBox/VirtualBox_extensionPack.sh
  
fi