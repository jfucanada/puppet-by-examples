exec { 'get-php-cs-fixer':
    path    => '/usr/bin',
    command => 'wget -O /usr/local/bin/php-cs-fixer http://cs.sensiolabs.org/get/php-cs-fixer.phar',
    onlyif  => 'test ! -f /usr/local/bin/php-cs-fixer',
}

exec { 'chmod-php-cs-fixer':
    path    => '/bin',
    command => 'chmod a+x /usr/local/bin/php-cs-fixer',
}
