$x = 'THIS IS X'

notify { 'Using single quotes':
    message => '\t\t\t  Special chars are not transformed ${x}  \n\n\n',
}