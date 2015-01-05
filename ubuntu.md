Ubuntu
======

Boxes:

* https://vagrantcloud.com/ubuntu
* https://vagrantcloud.com/ubuntu/boxes/trusty32

    ubuntu/trusty32

## Update the system

    sudo apt-get update -y

## Install packages

Install lynx:

    sudo apt-get install lynx-cur

Install ab:

    sudo apt-get install apache2-utils

Check the packages for git:

    apt-cache policy git

##Using willdurand/composer

    sudo apt-get install php5 -y
    sudo puppet module install willdurand-composer
    sudo puppet apply willdurand-composer.pp
    composer --version
