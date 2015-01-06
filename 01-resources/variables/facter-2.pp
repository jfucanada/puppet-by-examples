# Three different way to access facts:
# Some problems with the third solution

$v1 = $::osfamily
$v2 = $osfamily
#$v3 = $facts['osfamily']

notify { "Version 1: ${v1}": }
notify { "Version 2: ${v2}": }
#notify { "Version 3: ${v3}": }
