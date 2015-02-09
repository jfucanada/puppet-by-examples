$date = generate('/bin/date')
notify { "Printing variables: ${date}": }

$who = generate('/usr/bin/whoami')
notify { "Printing variables: ${who}": }

$pwd = generate('/bin/pwd')
notify { "Printing variables: ${pwd}": }

$tmp_date = generate('/bin/date')
$final_date = inline_template('<%= @tmp_date.upcase.strip %>')
notify { "SUPER DATE: ${final_date}": }

