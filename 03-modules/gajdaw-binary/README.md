# Binary Puppet Module

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What binary affects](#what-binary-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with binary](#beginning-with-binary)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
7. [Release notes](#release-notes)
8. [To do](#to-do)
9. [Inspiration](#inspiration)

## Overview

This module aims to simplify the installation of
binary applications that consist of a single file.

I prepared it and tested having PHP Phars in mind, like:

* `phpunit`
* `composer`
* `box`
* `php-cs-fixer`

## Module Description

Currently, there are no binary distributions for
many php command line applications, like the ones
mentioned in the Overview.
Thus, you cannot install them using package managers,
like APT, for example:

    # This won't work
    #
    $ sudo apt-get install composer

Once the binary packages are available, this module will become useless.

## Setup

### What binary affects


* Module downloads from the net a given file (e.g. `comppser.phar`)
* The file can be placed in arbitrary directory
* The file can be given an arbitrary name
* You can set the owner of the file
* You can set appropriate rights with `chmod` command

### Setup Requirements

The module uses:

* `wget` binary to download the box app: https://www.gnu.org/software/wget/
* `maestrodev-wget` puppet module https://github.com/maestrodev/puppet-wget
* when missing, `wget` is automatically installed by `maestrodev-wget` module

If you want to use this module for phar applications, like `composer`,
you will also need `php cli`.

But php is not required to use `gajdaw-binary` module.


### Beginning with binary

#### System wide install with Puppet

To install the module in your system run:

    sudo puppet module install gajdaw-binary

You may lock the version to avoid using the latest version:

    sudo puppet module install gajdaw-binary --version 0.1.0

#### System wide install with Git

You may also use git to install the module:

    mkdir -p /etc/puppet/modules/box
    cd /etc/puppet/modules/box
    git clone --depth 1 https://github.com/pro-vagrant/puppet-binary.git .

To lock the version, use:

    git clone --depth 1 --branch v0.1.0 https://github.com/pro-vagrant/puppet-binary.git .

## Usage

The examples are stored under `examples` directory.

### Composer

Here is `composer.pp` example:

    # Filename: examples/composer.pp
    binary::fetch { 'composer':
        source => 'https://getcomposer.org/composer.phar',
    }

To run it use the following command:

    sudo puppet apply examples/composer.pp

### Phpunit

Here is `phpunit.pp` example:

    # Filename: examples/phpunit.pp
    binary::fetch { 'phpunit':
        source => 'https://phar.phpunit.de/phpunit.phar',
    }

To run it use the following command:

    sudo puppet apply examples/phpunit.pp

### Php-cs-fixer

Here is `php-cs-fixer.pp` example:

    # Filename: examples/php-cs-fixer.pp
    binary::fetch { 'php-cs-fixer':
        source => 'http://cs.sensiolabs.org/get/php-cs-fixer.phar',
    }

To run it use the following command:

    sudo puppet apply examples/php-cs-fixer.pp

### Box

Here is `box.pp` example:

    # Filename: examples/box.pp
    binary::fetch { 'box':
        source => 'https://github.com/box-project/box2/releases/download/2.5.0/box-2.5.0.phar',
    }

To run it use the following command:

    sudo puppet apply examples/box.pp

### Running binaries

If php is missing, install it with:

    sudo apt-get install php5 -y

Now, you can use the binaries:

    phpunit --version
    composer --version
    php-cs-fixer --version
    box --version

### Uninstall

Currently, to uninstall binaries, you have to use `rm` command:

    sudo rm /usr/local/bin/composer
    sudo rm /usr/local/bin/phpunit
    sudo rm /usr/local/bin/php-cs-fixer
    sudo rm /usr/local/bin/box

## Reference

The complete list of parameters is available in
[`manifests/fetch.pp`](https://github.com/pro-vagrant/puppet-binary/blob/master/manifests/fetch.pp)
file.

## Limitations

The box was tested on:

* Ubuntu 14.04 / Puppet 3.7

## Development

When I work on this module I find the following commands indispensable:

    cd some/dir/with/source/code/for/the/module

    sudo puppet module list
    puppet module build .
    sudo puppet module install pkg/gajdaw-binary-0.1.0.tar.gz
    sudo puppet module uninstall gajdaw-binary

    sudo puppet apply examples/phpunit.pp
    sudo puppet apply examples/composer.pp
    sudo puppet apply examples/php-cs-fixer.pp
    sudo puppet apply examples/box.pp

    sudo puppet apply examples/php-common-phars.pp

Using them I don't have to upload the module to the Puppet Forge
just to verify if it is working or not.

## Release Notes

### 0.1.0

* initial release
* works fine with four attached examples

## To do

* using array of hashes as in `examples/php-common-phars.pp`
* tests

## Inspiration

The inspiration came from
[`willdurrand-composer`](https://forge.puppetlabs.com/willdurand/composer)
authored
[by William Durand](https://github.com/willdurand/puppet-composer).
