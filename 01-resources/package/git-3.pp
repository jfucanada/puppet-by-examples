# sudo puppet apply git-3.pp

package { 'git':
    ensure   => installed,
}
