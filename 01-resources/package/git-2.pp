# sudo puppet apply git-2.pp

package { 'git':
    ensure   => present,
}
