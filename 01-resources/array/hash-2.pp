$admin = {
    'name'    => 'John',
    'surname' => 'Doe',
}

$first_name = $admin['name']

notify { "His name is ${first_name}": }