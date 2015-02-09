
$tmp_pwd = generate('/bin/bash', '-c', 'eval echo "~vagrant"')
$final_pwd = inline_template('<%= @tmp_pwd.strip %>')

notify { "PWD for root: ${final_pwd}": }

