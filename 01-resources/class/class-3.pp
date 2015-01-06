# Class with one parameter.
# Parameter is optional because it has a default value.

class example3 (
    $msg = 'Lorem ipsum...'
) {
    notify { $msg: }
}

class { 'example3': }
