# Ubuntu
#   sudo puppet module install puppetlabs-apache --version 1.2.0
#   sudo puppet apply puppetlabs-apache.pp
#   sudo apt-get install lynx-cur -y


class {
  'apache':  default_vhost => false;
}


$hosts = ['lorem', 'ipsum', 'dolor', 'sit', 'foo', 'bar']

file { '/vagrant/tmp':
    ensure => directory,
}

define create_vhosts {

    file { "/vagrant/tmp/${name}":
        ensure => directory,
    }

    file { "/vagrant/tmp/${name}/index.html":
        content => "<h1>Hello, ${name}!</h1>",
        require => File["/vagrant/tmp/${name}"],
    }

    apache::vhost { "${name}.lh":
      port          => '80',
      docroot       => "/vagrant/tmp/${name}",
      docroot_owner => 'vagrant',
      docroot_group => 'vagrant',
    }

    file_line { "Append ${name}.lh to /etc/hosts":
        path  => '/etc/hosts',
        line  => "127.0.0.1 ${name}.lh\n",
        match => "127.0.0.1 ${name}.lh\n",
    }
}

create_vhosts { $hosts: ;}

