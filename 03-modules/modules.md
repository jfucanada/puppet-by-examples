Modules
=======

## Generate module

    puppet module generate gajdaw-first
    puppet module generate gajdaw-box

## Build module

    puppet module build

## Uninstall

    sudo puppet module uninstall gajdaw-box

## List

    sudo puppet module list

## Check Coding Standards

    puppet-ling gajdaw-first
    puppet-lint --no-autoloader_layout-check gajdaw-first/

## Developing modules

    cd some/dir/with/source/code/for/the/module
    sudo puppet module build .
    sudo puppet module install pkg/gajdaw-box-0.2.2.tar.gz
    sudo puppet apply -e "include box"

