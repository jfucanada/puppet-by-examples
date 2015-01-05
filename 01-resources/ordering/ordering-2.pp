notify { 'one':
}

notify { 'two':
    require => Notify['one'],
}

notify { 'three':
    require => Notify['two'],
}
