if $::operatingsystem == 'Ubuntu' {
    notify { 'We are on Ubuntu...': }
} elseif $::operatingsystem == 'Redhat' {
    notify { 'We are on Redhat...': }
} elseif {
    notify { 'System not supported!': }
}
