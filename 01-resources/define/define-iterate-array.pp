# To run foreach for an array use define.
#
# Similar examples:
#
#    class-iterate-array.pp
#    define-iterate-array.pp

define loop {
    notify { "This is ${name}...": }
}

loop { ['one', 'two', 'three']: }