if $::is_virtual {
    notify { 'We are on virtual platform...': }
} elsif $::operatingsystem == 'Darwin' {
    notify { 'We are on OS X...': }
} else {
    notify { 'We are on other platform...': }
}