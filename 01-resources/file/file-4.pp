file { 'Remove /tmp/another.txt':
    ensure => absent,
    path   => '/tmp/another.txt',
}