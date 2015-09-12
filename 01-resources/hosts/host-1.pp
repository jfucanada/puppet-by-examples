#http://www.puppetcookbook.com/posts/adding-a-host-entry.html
#https://docs.puppetlabs.com/references/latest/type.html#host

host { 'dashboard':
    ip           => '127.0.0.1',
    host_aliases => [ 'first.app.lh', 'second.app.lh' ]
}