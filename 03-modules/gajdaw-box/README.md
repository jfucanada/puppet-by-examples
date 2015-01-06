# box module

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What box module affects](#what-box-module-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with box module](#beginning-with-box-module)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Release notes](#release-notes)

## Overview

The module installs box application that easies the generation of PHP PHAR archives.
More information about the box app itself is available at:
http://box-project.org.

## Module Description

Currently, there is no binary package for box app available.
Thus, you cannot install box using package managers, like, for example:

    $ sudo apt-get install box

Once the binary packages are available, this module will be useless.

## Setup

### What box module affects

* Module copies box PHAR binary to your system (one file)
* The file can be placed in arbitrary directory
* The file can be given arbitrary name

### Setup Requirements

The module uses `wget` binary to download box.

If you want to run box application you will also need php cli.

But php is not required to use this module.

### Beginning with box module

#### System wide install with Puppet

To install the module in your system run:

    sudo puppet module install gajdaw-box

You may lock the version to avoid using the latest version:

    sudo puppet module install gajdaw-box --version 0.1.0

#### System wide install with Git

You may also use git to install the module:

    mkdir -p /etc/puppet/modules/box
    cd /etc/puppet/modules/box
    git clone --depth 1 https://github.com/pro-vagrant/puppet-box.git .

You may lock the version to avoid using the latest version:

    git clone --depth 1 --branch v0.1.0 https://github.com/pro-vagrant/puppet-box.git .

## Usage

To use `box` app:

* create `use-gajdaw-box.pp` file
* run the command to apply box
* install php cli

The simples `use-gajdaw-box.pp` file is:

    # Filename: use-gajdaw-box.pp
    #
    include box

Then apply the configuration with:

    sudo puppet apply use-gajdaw-box.pp

To test box you need to install php:

    sudo apt-get install php5 -y

Now, the `box` app should be available in your system:

    box --version

## Reference

The complete list of parameters is available in [`params.pp`](manifests/params.pp) file.

## Limitations

The box was tested on:

* Ubuntu 14.04 / Puppet 3.7

## Release Notes

### Release 0.2.0

* class parameters (all with reasonable defaults):
  -  $version
  -  $phar_location
  -  $target_dir
  -  $command_name
  -  $user
* used `maestrodev/wget` to download the file (not wget binary)
* improved documentation

### Release 0.1.0

* a class without parameters
* downloaded version: box 2.4.4
* fixed destination folder and filename: /usr/local/bin/box
* fixed src URL: https://github.com/kherge-archive/Box/releases/download/2.4.4/box-2.4.4.phar
* used `wget` binary
