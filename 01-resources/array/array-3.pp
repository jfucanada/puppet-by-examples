$numbers = ['one', 'two', 'three']


# When you pass an array to string
# all the elements are concatenated.
# This is not an iteration.

notify { "The numbers are: [$numbers]": }