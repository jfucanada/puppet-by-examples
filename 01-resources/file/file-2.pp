# sudo puppet apply file-2.pp

file { 'Second file':
    ensure  => present,
    path    => '/tmp/second.txt',
    mode    => '0612',
    content => 'The second file...',
    owner   => 'root',
    group   => 'root',
}