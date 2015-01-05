# Ubuntu
#   sudo puppet module install puppetlabs-apache --version 1.2.0
#   sudo puppet apply puppetlabs-apache-3.pp
#   sudo apt-get install lynx-cur -y
#   lynx by-examples.lh


# customize the dir for vhosts

class {
  'apache':  default_vhost => false;
}

$base_dir = '/vagrant/tmp'

file { [
        $base_dir,
        "${base_dir}/by-examples",
    ]:
    ensure => directory,
}

file { "${base_dir}/by-examples/index.html":
    content => '<h1>Another hello, by-examples!</h1>',
}

apache::vhost { 'by-examples.lh':
    port          => '80',
    docroot       => "${base_dir}/by-examples",
    docroot_owner => 'vagrant',
    docroot_group => 'vagrant',
}

file_line { 'Append by-examples.lh to /etc/hosts':
    path  => '/etc/hosts',
    line  => "127.0.0.1 by-examples.lh\n",
    match => "127.0.0.1 by-examples.lh\n",
}
