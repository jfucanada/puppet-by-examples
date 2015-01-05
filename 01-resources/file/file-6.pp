# One cannot create a file in a directory that doesn't exist
# The second declaration fails without the first one

file { '/vagrant/tmp':
    ensure => directory,
}

file { '/vagrant/tmp/index.html':
    content => '<h1>Hello, world!</h1>',
}