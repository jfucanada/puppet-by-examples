# Ubuntu
#   sudo apt-get install git -y
#   sudo puppet module install gajdaw-vcsrepository
#   sudo puppet apply git.pp

vcsrepo { '/tmp/git':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/git/git.git',
    user     => 'vagrant',
    branch   => 'v2.2.0',
    depth    => 1,
}
