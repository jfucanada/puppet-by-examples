# Ubuntu
#   sudo puppet module install puppetlabs-apache --version 1.2.0
#   sudo puppet apply puppetlabs-apache.pp
#   sudo apt-get install lynx-cur -y


class {
  'apache':  default_vhost => false;
}

file { [
        '/vagrant/tmp',
        '/vagrant/tmp/by-examples',
    ]:
    ensure => directory,
}

file { '/vagrant/tmp/by-examples/index.html':
    content => '<h1>Hello, by-examples!</h1>',
}

apache::vhost { 'by-examples.lh':
    port          => '80',
    docroot       => '/vagrant/tmp/by-examples',
    docroot_owner => 'vagrant',
    docroot_group => 'vagrant',
}

file_line { 'Append by-examples.lh to /etc/hosts':
    path  => '/etc/hosts',
    line  => "127.0.0.1 by-examples.lh\n",
    match => "127.0.0.1 by-examples.lh\n",
}
