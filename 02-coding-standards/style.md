Puppet Coding Standards
=======================

https://docs.puppetlabs.com/guides/style_guide.html

## Puppet-Lint

Use lint to check standards

http://puppet-lint.com/

To install `puppet-lint` use one of the examples:

    cd 01-resources
    cd package
    sudo puppet apply puppet-lint.pp

Then you can analyse the examples running:

    puppet-lint 01-resources/array/array-1.pp

## The Style

### Files

Saparate files for:

* classes
* defined resources


### DOC

DOC necessary for:

* classes
* defined resources

(otherwise you will get puppet-lint warnings).

### Global variables (like facts)

Use:

    $::osfamily

Don't use:

    $osfamily

