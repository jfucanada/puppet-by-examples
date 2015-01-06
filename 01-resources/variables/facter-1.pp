# for a list of core facts refer to:
# https://docs.puppetlabs.com/facter/latest/core_facts.html

notify { "Facts: hostname = ${::hostname}": }
notify { "Facts: kernel = ${::kernel}": }
notify { "Facts: kernelrelease = ${::kernelrelease}": }
notify { "Facts: operatingsystem = ${::operatingsystem}": }
notify { "Facts: operatingsystemrelease = ${::operatingsystemrelease}": }
notify { "Facts: osfamily = ${::osfamily}": }