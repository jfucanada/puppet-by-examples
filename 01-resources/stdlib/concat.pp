include stdlib

$names = [
    'john',
    'peter',
]

$names2 = concat($names, 'ann')

notify { $names2: }

