# Ubuntu
#   sudo puppet module install gini-archive
#   sudo puppet apply archive-1.pp


class { 'archive::prerequisites': }


archive { 'phpMyAdmin':
    ensure     => present,
    url        => 'https://github.com/phpmyadmin/phpmyadmin/archive/RELEASE_4_2_10_1.zip',
    checksum   => false,
    src_target => '/var/tmp',
    target     => '/opt',
    root_dir   => 'phpMyAdmin',
    extension  => 'zip',
}

exec { 'ownership':
    command => 'chown -R vagrant:vagrant /opt/phpMyAdmin',
    path    => "/bin",
    require => Archive['phpMyAdmin'],
}