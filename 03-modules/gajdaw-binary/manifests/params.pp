# = Class: binary::params
#
# This class defines default parameters used by the main module class `binary`.
#
# == Variables:
#
# Refer to `binary` class for the variables defined here.
#
# == Usage:
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes.
#
class binary::params {
  $target_dir = '/usr/local/bin'
  $user       = 'root'
  $rights     = 'a+x'
}
