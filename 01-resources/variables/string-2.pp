$x = 'THIS IS X'

notify { 'Using double quotes':
    message => "\t\t\t  Now, special chars are transformed ${x}  \n\n\n",
}