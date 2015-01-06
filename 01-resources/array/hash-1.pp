$admin = {
    'name'    => 'John',
    'surname' => 'Doe',
}

$first_name = $admin['name']

file { 'A file':
    'path' => '$admin[