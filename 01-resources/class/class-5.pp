# Class with local variables
# that act like properties


$abcdef   = 'GLOBAL'
notify { "Global scope: ${abcdef}": }

class example5scope {

    # this acts as a property
    $abcdef   = 'LOCAL IN THE CLASS'

    notify { "From inside of a class: ${abcdef}": }
}

class {
    example5scope:
}

notify { "Calling a class property from a global scope: ${example5scope::abcdef}" :
}
