# Ubuntu
#   sudo apt-get install git -y
#   sudo puppet module install puppetlabs-vcsrepo
#   sudo puppet apply vcsrepo-1.pp

vcsrepo { '/tmp/symfony-standard':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/symfony/symfony-standard.git',
    user     => 'vagrant',
    revision => 'v2.6.1'
}
