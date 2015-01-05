# Ubuntu
#   sudo puppet module install puppetlabs-stdlib
#   sudo puppet apply file_line.pp

include stdlib

file { '/tmp/first.txt':
    content => "one\ntwo\nthree\nfour\n",
}

file_line { 'Append a line to /tmp/first.txt':
    path    => '/tmp/first.txt',
    line    => "\n\nYet another line...\n\n",
    require => File['/tmp/first.txt']
}

file_line { 'Append a line to /tmp/first.txt if it does not exist':
    path    => '/tmp/first.txt',
    line    => "\nthis is a line\n",
    match   => "\nthis is a line\n",
    require => File['/tmp/first.txt']
}
