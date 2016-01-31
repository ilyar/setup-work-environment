#!/usr/bin/env bash

# Vagrant
# TODO uninstall Vagrant

version=${1:-'1.8.1'}
arch=$(uname -m)

if [ $(which vagrant) ];
then
  
  echo "$(vagrant --version) already installed and plugins:"
  vagrant plugin list

else
 
  # Install requirements for the synced folder of Vagrant
  sudo apt-get install -y nfs-kernel-server nfs-common portmap

  # Install Vagrant
  echo "Install Vagrant..."
  wget -nv --output-document /tmp/vagrant.deb https://releases.hashicorp.com/vagrant/${version}/vagrant_${version}_${arch}.deb
  sudo dpkg -i /tmp/vagrant.deb
  rm /tmp/vagrant.deb
  vagrant --version
  
  # Optional
  # mv ~/.vagrant.d/boxes/ ~/space/vagrant/boxes
  # ln -sf ~/space/vagrant/boxes ~/.vagrant.d/boxes

  # Install plugin Vagrant Host Manager https://github.com/smdahlen/vagrant-hostmanager
  vagrant plugin install vagrant-hostmanager
  # Optional https://github.com/smdahlen/vagrant-hostmanager#passwordless-sudo
  # echo -e "Cmnd_Alias VAGRANT_HOSTMANAGER_UPDATE = /bin/cp /home/$USER/.vagrant.d/tmp/hosts.local /etc/hosts \n %sudo ALL=(root) NOPASSWD: VAGRANT_HOSTMANAGER_UPDATE" | sudo tee /etc/sudoers.d/vagrant_hostmanager

  # Install plugin Caffeine reducer https://github.com/fgrehm/vagrant-cachier
  vagrant plugin install vagrant-cachier
  # Optional
  # ln -sf ~/space/vagrant/cache ~/.vagrant.d/cache
  
  # Install plugin to automate bindfs mount in the VM https://github.com/gael-ian/vagrant-bindfs
  vagrant plugin install vagrant-bindfs
  
  # Install plugin Vagrant Host Manager https://github.com/smdahlen/vagrant-hostmanager
  vagrant plugin install vagrant-hostmanager
fi
