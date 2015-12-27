#!/usr/bin/env bash

# VirtualBox Oracle VM VirtualBox Extension Pack
# https://forums.virtualbox.org/viewtopic.php?f=7&t=44337

mode=${1:-'install'}

if [ "$mode" != 'install' ];
then

  # Install VirtualBox Oracle VM VirtualBox Extension Pack
  version=$(vboxmanage -v)
  var1=$(echo ${version} | cut -d 'r' -f 1)
  var2=$(echo ${version} | cut -d 'r' -f 2)
  file="Oracle_VM_VirtualBox_Extension_Pack-${var1}-${var2}.vbox-extpack"
  wget http://download.virtualbox.org/virtualbox/${var1}/${file} -O /tmp/${file}
  
  sudo vboxmanage extpack install /tmp/${file} --replace
  rm /tmp/${file}

else

  # Uninstall VirtualBox Oracle VM VirtualBox Extension Pack
  sudo vboxmanage extpack uninstall "Oracle VM VirtualBox Extension Pack"

fi



