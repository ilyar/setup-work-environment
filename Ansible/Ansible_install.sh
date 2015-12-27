#!/usr/bin/env bash

# Ansible
# http://docs.ansible.com/ansible/intro_installation.html

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y
