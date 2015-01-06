class example3 (
    $msg = 'Lorem ipsum...'
) {
    notify { $msg: }
}

class { 'example3': }

