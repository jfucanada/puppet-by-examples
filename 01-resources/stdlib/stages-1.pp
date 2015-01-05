include stdlib

#=======================================

class git {
    package { 'git': }
}

class lynx {
    package { 'lynx-cur': }
}

class mc {
    package { 'mc': }
}

#=======================================
#
#class { 'git':
#    stage => 'runtime',
#}
#
#class { 'lynx':
#    stage => 'setup',
#}
#
#class { 'mc':
#    stage => 'deploy',
#}

#=======================================
class {
    'git':  stage => 'runtime';
    'lynx': stage => 'setup';
    'mc':   stage => 'deploy';
}

