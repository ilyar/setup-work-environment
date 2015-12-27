#!/bin/bash
 
# Setup minimal environment for use virtual machines on VirtualBox and Vagrant (plugins: cachier, hostmanager, bindfs)

scriptPath=${0%/*}

${scriptPath}/VirtualBox/VirtualBox_install.sh
${scriptPath}/Vagrant/Vagrant_install.sh
