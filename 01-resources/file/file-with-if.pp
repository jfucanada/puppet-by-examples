
if $::is_virtual {

    file { '/tmp/first.txt':
        content => 'The first file...',
    }

}

