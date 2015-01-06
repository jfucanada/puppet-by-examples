# Class iterates an array.
# Just as define does
#
#    class-iterate.pp
#    define-iterate.pp


class example5 (
    $msg = 'Lorem ipsum...'
) {
    notify { $msg: }
}

class { 'example5':
    msg => ['one', 'two', 'three', 'four'],
}

