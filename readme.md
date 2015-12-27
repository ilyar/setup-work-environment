# Setup work environment `draft`

Systematics of experience...

Setup minimal environment for use virtual machines on VirtualBox 5.0 and Vagrant 1.8.1 (plugins: cachier, hostmanager, bindfs)

## Install

    $ mkdir -p ~/bin/tools && cd $_
    $ git clone https://github.com/ilyar/setup-work-environment.git --depth 1
    $ ln $(pwd)/setup-work-environment/run.sh ~/setup-work-environment

## Update

    $ cd ~/bin/tools/setup-work-environment && git pull
    
# Usage for setup and update

    $ setup-work-environment
