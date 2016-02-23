#!/usr/bin/env bash

codename=$(lsb_release --codename | cut -f2)

sudo apt-get install apt-transport-https ca-certificates


echo deb https://apt.dockerproject.org/repo ubuntu-${codename} main | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-cache policy docker-engine

# For Ubuntu Precise 12.04 (LTS) see https://docs.docker.com/engine/installation/linux/ubuntulinux/
sudo apt-get install linux-image-extra-$(uname -r)
sudo apt-get install docker-engine -y
