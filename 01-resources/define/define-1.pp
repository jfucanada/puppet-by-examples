# == Define: some_defined_resource
#
# Full description of defined resource type example_resource here.
#
# === Examples
#
# Provide some examples on how to use this type:
#
#   some_defined_resource { 'abc': }
#
# === Authors
#
# Author Name <gajdaw@gajdaw.pl>
#
# === Copyright
#
# Copyright 2015 gajdaw
#

define some_defined_resource {
    notify { "This is a some_defined_resource call for '${name}' ...": }
}

some_defined_resource { 'foo bar': }
