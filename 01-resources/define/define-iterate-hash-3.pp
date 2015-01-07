# validate the type of parameter passed to a defined resource

include stdlib

$list = [
  {
      'app' => 'CAT',
      'url' => 'DOG'
  },
  {
      'app' => 'SKY',
  },
  {
      'url' => 'CLOUDS',
  }
]

define loop (
    $user = 'root'
) {
    if is_hash($name) and has_key($name, 'app') and has_key($name, 'url') {
        notify { "User: ${user} // App ${name['app']} // Url ${name['url']}": }
    } else {
        warning('ERROR')
    }
}

loop { 'ABC':
 user => 'ipsum',
}

loop { $list:
 user => 'ipsum',
}

