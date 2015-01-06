exec { 'get-php-cs-fixer':
    path    => '/usr/bin',

    # Using more elaborate path, like:
    #
    #     path    => '/usr/bin:/bin:/usr/sbin:/sbin',
    #
    # would probably resolve the differences between different
    # systems. Wget may be installed in different locations
    # on different systems.
    #

    command => 'wget -O /usr/local/bin/php-cs-fixer http://cs.sensiolabs.org/get/php-cs-fixer.phar',
    onlyif  => 'test ! -f /usr/local/bin/php-cs-fixer',
}

exec { 'chmod-php-cs-fixer':
    path    => '/bin',
    command => 'chmod +x /usr/local/bin/php-cs-fixer',
}
