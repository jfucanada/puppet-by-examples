# What is wrong here???

if $::operatingsystem == 'Ubuntu' {

    notify { 'We are on Ubuntu...': }

} elseif $::operatingsystem == 'Redhat' {

    notify { 'We are on Redhat...': }

} else {

    notify { 'System not supported!': }

}
