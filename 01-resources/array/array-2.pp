#https://docs.puppetlabs.com/puppet/latest/reference/experiments_lambdas.html
# Experimental - doesn't work in Puppet 3.7
#
#$a = [1,2,3]
#each($a) |$value| { notice $value }
#

#http://stackoverflow.com/questions/12958114/how-to-iterate-over-an-array-in-puppet

$numbers = ['one', 'two', 'three']

define loop {
    notify { "This is ${name}...": }
}

loop { $numbers: }