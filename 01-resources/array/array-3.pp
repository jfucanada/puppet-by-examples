# Search in array
#
# http://ttboj.wordpress.com/2013/11/17/iteration-in-puppet/

$numbers = ['one', 'two', 'three', 'four']

$needle = 'four'

$index = inline_template('<%= numbers.index(needle) %>')

notify { $index: }