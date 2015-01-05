$date = generate('/bin/date')
notify { "Printing variables: ${date}": }

$who = generate('/usr/bin/whoami')
notify { "Printing variables: ${who}": }

$pwd = generate('/bin/pwd')
notify { "Printing variables: ${pwd}": }

