# Ubuntu
#   sudo apt-get install git -y
#   sudo puppet module install gajdaw-vcsrepository
#   sudo puppet apply phpmyadmin.pp

vcsrepo { '/tmp/phpmyadmin':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/phpmyadmin/phpmyadmin.git',
    user     => 'vagrant',
    branch   => ' RELEASE_4_3_5',
    depth    => 1,
}
