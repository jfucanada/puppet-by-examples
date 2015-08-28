
# if the dir does not exists than the execution fails

$tmp = generate('/bin/bash', '-c', 'ls /home | grep vagrant')
$home_vagrant_dir_exists = inline_template('<%= @tmp.strip %>')

notify { "[$home_vagrant_dir_exists]": }

if $home_vagrant_dir_exists == 'vagrant' {
    notify { "YES": }
}
