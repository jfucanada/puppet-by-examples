# sudo puppet apply file-2.pp

file { 'Second file':
    ensure  => present,
    path    => '/tmp/second.txt',
    mode    => '0640',
    content => 'The second file...',
    owner   => 'www-data',
    group   => 'www-data',
}