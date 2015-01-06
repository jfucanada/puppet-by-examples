# == Class: box
#
# The class to download box application (http://box-project.org).
#
# === Parameters
#
# [*version*]
#   Version of the application to download and install.
#   Defaults to: "2.5.0"
#
# [*phar_location*]
#   URL where box executable can be found.
#   Defaults to: "https://github.com/box-project/box2/releases/download/${version}/box-${version}.phar"
#
# [*target_dir*]
#   Where to install the box executable.
#   Defaults to: "/usr/local/bin"
#
# [*command_name*]
#   The name of the box executable.
#   Defaults to: "box"
#
# [*user*]
#   The owner of the box executable.
#   Defaults to: "root"
#
# == Example:
#
# Installing box with default settings:
#
#   include box
#
#
# Installing box in different directory:
#
#   class { 'box':
#     'target_dir'   => '/bin',
#     'command_name' => 'box-app',
#   }
#
# === Authors
#
# Włodzimierz Gajda <gajdaw@gajdaw.pl>
#
# === Copyright
#
# Copyright 2015 Włodzimierz Gajda
#
class box (
  $version      = undef,
  $target_dir   = undef,
  $command_name = undef,
  $user         = undef
) {

  include box::params

  $box_version = $version ? {
    undef => $::box::params::version,
    default => $version
  }

  $box_target_dir = $target_dir ? {
    undef => $::box::params::target_dir,
    default => $target_dir
  }

  $box_command_name = $command_name ? {
    'UNDEF' => $::box::params::command_name,
    default => $command_name
  }

  $box_user = $user ? {
    'UNDEF' => $::box::params::user,
    default => $user
  }

  wget::fetch { 'box-wget':
    source      => $::box::params::phar_location,
    destination => "${box_target_dir}/${box_command_name}",
    execuser    => $box_user,
    onlyif      => "test ! -f ${box_target_dir}/${box_command_name}",
  }

  exec { 'box-fix-permissions':
    command => "chmod a+x ${box_command_name}",
    path    => '/usr/bin:/bin:/usr/sbin:/sbin',
    cwd     => $box_target_dir,
    user    => $box_user,
    unless  => "test -x ${box_target_dir}/${box_command_name}",
    require => Wget::Fetch['box-wget'],
  }

}
