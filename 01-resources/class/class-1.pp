class example1 {
    notify { 'Class Example 01': }
}

# Include can be used arbitrary number of times.
# You cannot pass parameters to class with include.
# To pass parameters you need to use 'class'.

include example1
include example1
include example1
