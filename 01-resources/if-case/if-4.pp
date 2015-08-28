if $::operatingsystem == 'Ubuntu' {
    notify { 'We are on Ubuntu...': }
}

if $::operatingsystem == 'Redhat' {
    notify { 'We are on Redhat...': }
}
