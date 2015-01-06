$admin = {
    'name'    => 'John',
    'surname' => 'Doe',
}


file { 'A file':
    path    => "/tmp/${admin['name']}.txt",
    content => "Hi, I'm ${admin['surname']}!",
}