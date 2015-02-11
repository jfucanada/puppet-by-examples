include wget

wget::fetch { 'http://cs.sensiolabs.org/get/php-cs-fixer.phar':
  destination => '/tmp/php-cs-fixer.phar',
  cache_dir   => '/var/cache/wget',
}