#http://www.puppetcookbook.com/posts/adding-a-host-entry.html
#https://docs.puppetlabs.com/references/latest/type.html#host

host { 'third.app.lh':
    ip => '127.0.0.1'
}