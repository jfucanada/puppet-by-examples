
$git_version = generate('/usr/local/bin/git', '--version')


if $git_version != '1.2.3' {
    package { 'curl': }
}
