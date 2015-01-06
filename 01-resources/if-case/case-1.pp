case $::operatingsystem {
    'Ubuntu': { notify { 'We are on Ubuntu...': } }
    'Redhat': { notify { 'We are on Redhat...': } }
    default:  { notify { 'System not supported!': } }
}
