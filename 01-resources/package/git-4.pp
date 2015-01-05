# sudo puppet apply git-4.pp
# apt-cache policy git

package { 'git':
    ensure   => '1.9.1',
}
