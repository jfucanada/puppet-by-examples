# Passing an array to a class.
# This is not an iteration: it just passes the array
# to the calls inside class.
#
# Similar examples:
#
#    class-iterate-array.pp
#    define-iterate-array.pp


class example5 (
    $msg = 'Lorem ipsum...'
) {
    # You cannot use the msg like this
    # All the elements will be concatenated
    # like in array-2.pp example
    #
    #notify { "This is ${msg}...": }

    notify { $msg: }
}

class { 'example5':
    msg => ['one', 'two', 'three'],
}

