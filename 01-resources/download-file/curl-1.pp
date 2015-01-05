if defined(Package['curl']) == false {
    package { 'curl': }
}

exec { 'phpunit-get':
    path    => '/usr/bin',
    command => 'curl https://phar.phpunit.de/phpunit.phar -o /usr/local/bin/phpunit 2>/dev/null',
    onlyif  => 'test ! -f /usr/local/bin/phpunit',
    require => [Package['curl']],
}

exec { 'phpunit-chmod':
    path    => '/bin',
    command => 'chmod +x /usr/local/bin/phpunit',
    require => Exec['phpunit-get'],
}