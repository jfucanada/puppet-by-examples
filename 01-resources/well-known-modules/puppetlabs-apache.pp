# Ubuntu
#   sudo puppet module install puppetlabs-apache
#   sudo puppet apply puppetlabs-apache.pp
#   sudo apt-get install lynx-cur -y


class {
  'apache':  default_vhost => false;
}

file { [
        '/vagrant/tmp',
        '/vagrant/tmp/host1',
        '/vagrant/tmp/host2',
    ]:
    ensure => directory,
}

file { '/vagrant/tmp/host1/index.html':
    content => '<h1>Hello, world!</h1>',
}

file { '/vagrant/tmp/host2/index.html':
    content => '<h1>Lorem ipsum</h1>',
}

apache::vhost { 'host1.lh':
  port          => '80',
  docroot       => '/vagrant/tmp/host1',
  docroot_owner => 'vagrant',
  docroot_group => 'vagrant',
}

apache::vhost { 'host2.lh':
  port          => '80',
  docroot       => '/vagrant/tmp/host2',
  docroot_owner => 'vagrant',
  docroot_group => 'vagrant',
}

