# Ubuntu
#   sudo apt-get install git -y
#   sudo puppet module install gajdaw-vcsrepository
#   sudo puppet apply symfony-standard.pp

vcsrepo { '/tmp/symfony-standard':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/symfony/symfony-standard.git',
    user     => 'vagrant',
    branch   => 'v2.6.1',
    depth    => 1,
}
