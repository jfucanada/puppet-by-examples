# sudo puppet apply puppet-lint.pp

package { 'puppet-lint':
    ensure   => '1.1.0',
    provider => 'gem',
}