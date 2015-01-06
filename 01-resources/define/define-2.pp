# Define iterates an array
# Class also iterates an array

$numbers = ['one', 'two', 'three']

define loop {
    notify { "This is ${name}...": }
}

loop { $numbers: }