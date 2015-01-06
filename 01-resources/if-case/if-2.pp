
$git_version = generate('/usr/bin/git', '--version')
notify { "Required version is '${git_version}'": }

if '1.9.1' in $git_version {
    notify { 'Required version is PRESENT': }
} else {
    notify { 'Required version is NOT PRESENT': }
}
