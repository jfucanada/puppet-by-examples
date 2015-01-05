CentOS
======

Boxes:

* https://vagrantcloud.com/puppetlabs
* https://vagrantcloud.com/puppetlabs/boxes/centos-7.0-64-puppet

    puppetlabs/centos-7.0-64-puppet

## Update the system

https://www.centos.org/docs/5/html/yum/sn-updating-your-system.html

    sudo yum update -y

## Basics

How to check release?

http://forum.directadmin.com/showthread.php?t=15878

    cat /etc/*release*

How to check the package name for a binary?

http://serverfault.com/questions/514401/how-to-install-apache-benchmark-on-centos

    yum provides /usr/bin/ab

## Install the software

How to install lynx and ab:

http://serverfault.com/questions/514401/how-to-install-apache-benchmark-on-centos

    sudo yum install lynx
    sudo yum install httpd-tools

Install PHP:

    sudo yum install php -y

