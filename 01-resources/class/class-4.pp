class example4 (
    $msg = 'Lorem ipsum...'
) {
    notify { $msg: }
}

class { 'example4':
    msg => 'Dolor sit amet!',
}

