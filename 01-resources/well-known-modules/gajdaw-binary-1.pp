# Ubuntu
#   sudo apt-get install php5 -y
#   sudo puppet module install gajdaw-binary
#   sudo puppet apply gajdaw-binary-1.pp
#   composer --version
#   box --version
#   phpunit --version
#   php-cs-fixer --version

binary::fetch { 'box':
    $name => $name,
    $url  => 'https://github.com/box-project/box2/releases/download/2.5.0/box-2.5.0.phar',
# default    $target_dir    => '/usr/local/bin'
# default    $command_name  => $name
# default    $user          => 'root'
# default    $rights        => 'a+x'
}

binary::fetch { 'composer':
    $phar_location = 'https://getcomposer.org/composer.phar'
}

binary::fetch { 'phpunit':
    $phar_location = 'https://phar.phpunit.de/phpunit.phar'
}

binary::fetch { 'php-cs-fixer':
    $phar_location = 'http://cs.sensiolabs.org/get/php-cs-fixer.phar'
}

