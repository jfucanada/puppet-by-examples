# One cannot reassign a new value to variable

$val1 = 'abc'
notify { "Printing variables: val1 = ${val1}": }

$val1 = 345
notify { "Printing variables: val1 = ${val1}": }