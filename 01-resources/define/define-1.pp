define some_defined_resource {
    notify { "This is a some_defined_resource call for '${name}' ...": }
}

# Defined resources may be declared
# arbitrary number of times.

some_defined_resource { 'foo bar': }
some_defined_resource { 'another': }
some_defined_resource { 'yet another': }
