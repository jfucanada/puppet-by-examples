$admin = {
    'name'    => 'John',
    'surname' => 'Doe',
}

$first_name = $admin['name']

notify { "His name is ${first_name}": }

# All the key/value pairs.
notify { "COMPLETE HASH = ${admin} ": }

# One value
notify { "SURNAME = ${admin['surname']} ": }