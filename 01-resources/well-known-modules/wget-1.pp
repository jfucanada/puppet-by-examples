# Ubuntu
#   sudo puppet module install maestrodev-wget
#   sudo puppet apply wget-1.pp

wget::fetch { 'get-by-examples-net':
    source      => 'http://by-examples.net',
    destination => '/tmp/by-examples-index.html',
}

