# ln -s /etc /tmp/link-to-etc

file { '/tmp/link-to-etc':
    ensure => link,
    target => '/etc',
}