binary::fetch { 'phpunit':
    source => 'https://phar.phpunit.de/phpunit.phar',
}

binary::fetch { 'composer':
    source => 'https://getcomposer.org/composer.phar',
}

binary::fetch { 'php-cs-fixer':
    source => 'http://cs.sensiolabs.org/get/php-cs-fixer.phar',
}

binary::fetch { 'box':
    source => 'https://github.com/box-project/box2/releases/download/2.5.0/box-2.5.0.phar',
}


# to be done
#
#$phars = [
#    {
#        name => 'box',
#        source => 'https://github.com/box-project/box2/releases/download/2.5.0/box-2.5.0.phar'
#    },
#    {
#        name => 'phpunit',
#        source => 'https://phar.phpunit.de/phpunit.phar'
#    }
#]
#
#binary::fetch { $phars: }
