Ubuntu
======

Boxes:

* https://vagrantcloud.com/ubuntu
* https://vagrantcloud.com/ubuntu/boxes/trusty32

    ubuntu/trusty32

## Update the system

    sudo apt-get update -y

## Update puppet in Ubuntu 12.04

The commands to run:

    sudo wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
    sudo dpkg -i puppetlabs-release-precise.deb
    sudo apt-get update -y
    sudo apt-get install puppet -y
    puppet --version

## Install packages

Install lynx:

    sudo apt-get install lynx-cur

Install ab:

    sudo apt-get install apache2-utils

Check the packages for git:

    apt-cache policy git

Install PHP:

    sudo apt-get install php5 -y

