Puppet by examples
==================

## Puppet Documentation - References

https://docs.puppetlabs.com/references/latest/type.html

## Puppet Documentation - Learning

http://docs.puppetlabs.com/learning/ral.html

http://docs.puppetlabs.com/learning/manifests.html

## Lint

http://puppet-lint.com/

## Commands

Applying manifests that don't require root's privileges:

    puppet apply filename.pp

Applying manifests that require root's privileges:

    sudo puppet apply git.pp

Build in manual:

    puppet describe --list
    puppet describe user

List resources:

    puppet resource user
    puppet resource user root
    puppet resource file /etc

##Boxes

* https://vagrantcloud.com/hashicorp
* https://vagrantcloud.com/puppetlabs
* https://vagrantcloud.com/chef
* https://vagrantcloud.com/centos
* https://vagrantcloud.com/ubuntu

