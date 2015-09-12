exec { 'mkdir lets-try-it':
    path    => '/usr/bin:/bin:/usr/sbin:/sbin',
    command => 'mkdir -p /tmp/abc/def/ghi && chown -R vagrant:vagrant /tmp/abc',
}
