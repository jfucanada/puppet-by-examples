$x = 'THIS IS X'

notify { 'Using double quotes':
    message => "\t\t\t  Special chars are not transformed ${x}  \n\n\n",
}