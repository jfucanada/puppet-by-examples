# = Class: box::params
#
# This class defines default parameters used by the main module class box.
#
# == Variables:
#
# Refer to box class for the variables defined here.
#
# == Usage:
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes.
#
class box::params {
  $version       = '2.5.0',
  $phar_location = "https://github.com/box-project/box2/releases/download/${version}/box-${version}.phar"
  $target_dir    = '/usr/local/bin'
  $command_name  = 'box'
  $user          = 'root'
}
