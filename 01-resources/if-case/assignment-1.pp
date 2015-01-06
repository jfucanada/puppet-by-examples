# This type of assignment is called "selector"
#
# https://docs.puppetlabs.com/puppet/3.7/reference/lang_conditional.html#selectors

$rootgroup = $osfamily ? {
    'Solaris'          => 'wheel',
    /(Darwin|FreeBSD)/ => 'wheel',
    default            => 'root',
}

notify { "Root group: ${$rootgroup}": }
