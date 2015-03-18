file { '/tmp/first.txt':
    content => "lorem\nipsum\ndolor\nsit\namet",
}


exec { 'lets-try-it':
    path    => '/usr/bin:/bin:/usr/sbin:/sbin',
    command => 'sed -i "/dolor/d" /tmp/first.txt',
    require => File['/tmp/first.txt'],
}
