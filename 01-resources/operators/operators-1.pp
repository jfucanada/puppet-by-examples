$x = undef


if $x {
    notify { '01': }
}

if !$x {
    notify { '02': }
}

#https://docs.puppetlabs.com/puppet/latest/reference/lang_expressions.html#in
#Add logical expressions:
#
#- or
#- and
#- in


