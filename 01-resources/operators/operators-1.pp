$x = undef


if $x {
    notify { '01': }
}

if !$x {
    notify { '02': }
}


