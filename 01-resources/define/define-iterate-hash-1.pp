$list_of_phars = [
  {
      'app' => 'composer',
      'url' => 'https://getcomposer.org/composer.phar'
  },
  {
      'app' => 'phpunit',
      'url' => 'https://phar.phpunit.de/phpunit.phar'
  },
  {
      'app' => 'php-cs-fixer',
      'url' => 'http://cs.sensiolabs.org/get/php-cs-fixer.phar'
  },
  {
      'app' => 'box',
      'url' => 'https://github.com/box-project/box2/releases/download/2.5.0/box-2.5.0.phar'
  },
  {
      'app' => 'symfony',
      'url' => 'http://symfony.com/installer'
  }
]

define loop {
    notify { "App ${name['app']} // Url ${name['url']}": }
}

loop { $list_of_phars: }