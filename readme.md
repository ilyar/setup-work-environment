# Setup work environment

Systematics of experience...

Setup 

* VirtualBox 5.0
* Vagrant 1.8.1 (plugins: cachier, hostmanager, bindfs)
* Ansible 1.9.4

## Install

    $ cd ~ && mkdir -p ~/bin/tools
    $ git clone https://github.com/ilyar/setup-work-environment.git --depth 1 -b stable bin/tools/setup-work-environment
    $ chmod +x bin/tools/setup-work-environment/setup.sh

## Update

    $ git -C ~/bin/tools/setup-work-environment pull
    
## Usage

    $ ./bin/tools/setup-work-environment/setup.sh

## Roadmap

* Add update and uninstall actions
* Use Ansible
* Add tests
