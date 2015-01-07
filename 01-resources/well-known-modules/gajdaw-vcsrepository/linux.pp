# Ubuntu
#   sudo apt-get install git -y
#   sudo puppet module install gajdaw-vcsrepository
#   sudo puppet apply linux.pp

vcsrepo { '/tmp/linux':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/torvalds/linux.git',
    user     => 'vagrant',
    branch   => 'v3.18',
    depth    => 1,
}
