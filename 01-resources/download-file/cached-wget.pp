exec { 'cached-wget':
    path    => '/usr/bin:/bin:/usr/sbin:/sbin',
    command => 'wget -N -P /var/cache/wget http://cs.sensiolabs.org/get/php-cs-fixer.phar',
    onlyif  => 'test ! -f /var/cache/wget/php-cs-fixer.phar',
}

#
# -N == without timestamping
# -P == destination directory
#wget -N -P /var/cache/wget URL

#wget -N -P /var/cache/wget ftp://ftp.ruby-lang.org/pub/ruby/2.2/ruby-2.2.0.tar.gz
#wget -N -P /var/cache/wget http://cs.sensiolabs.org/get/php-cs-fixer.phar

# URLs
#ftp://ftp.ruby-lang.org/pub/ruby/2.2/ruby-2.2.0.tar.gz
#http://cs.sensiolabs.org/get/php-cs-fixer.phar