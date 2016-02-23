#!/bin/bash
 
# Setup minimal environment for use virtual machines on VirtualBox and Vagrant (plugins: cachier, hostmanager, bindfs)

scriptPath=${0%/*}
optional=$1

${scriptPath}/VirtualBox/VirtualBox_install.sh
${scriptPath}/Vagrant/Vagrant_install.sh

if [ "$3" == 'all' ]; then
  ${scriptPath}/Ansible/Ansible_install.sh
fi