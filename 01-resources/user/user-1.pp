user { 'deployer':

    password => 'whnfuy63847vnhsyHGY57h',
    home     => '/home/deployer',
    shell    => '/bin/bash'

}

group { 'deployer':

}

file { '/home/deployer':
    ensure => directory,
    owner  => 'deployer',
    group  => 'deployer',
    mode   => '0700'
}

