# == Define: binary
#
# The class to download and install one-file-applications
# like composer.phar, phpunit.phar, etc.
#
# === Parameters
#
# [*source*]
#   URL of the binary.
#   Required: no default value
#
# [*target_dir*]
#   Where to install the box executable.
#   Defaults to: '/usr/local/bin'
#
# [*user*]
#   The owner of the box executable.
#   Defaults to: 'root'
#
# [*rights*]
#   The rights for the newly created file.
#   Defaults to: 'a+x'
#
# [*command_name*]
#   The name of the box executable.
#   Defaults to: the name of the resource
#
#
# == Example:
#
# Installing phpunit with default settings:
#
#     binary::fetch { 'phpunit':
#         source => 'https://phar.phpunit.de/phpunit.phar',
#     }
#
#
# Installing composer in a different directory:
#
#     binary::fetch { 'composer':
#         source     => 'https://getcomposer.org/composer.phar',
#         target_dir => '/tmp',
#     }
#
# === Authors
#
# Włodzimierz Gajda <gajdaw@gajdaw.pl>
#
# === Copyright
#
# Copyright 2015 Włodzimierz Gajda
#

define binary::fetch (
  $source,
  $target_dir   = undef,
  $user         = undef,
  $rights       = undef,
  $command_name = undef
) {

  include binary::params

  $binary_target_dir = $target_dir ? {
    undef   => $::binary::params::target_dir,
    default => $target_dir
  }

  $binary_user = $user ? {
    undef   => $::binary::params::user,
    default => $user
  }

  $binary_rights = $rights ? {
    undef   => $::binary::params::rights,
    default => $rights
  }

  $binary_command_name = $command_name ? {
    undef   => $name,
    default => $command_name
  }

  wget::fetch { "wget::fetch ${name}":
    source      => $source,
    destination => "${binary_target_dir}/${binary_command_name}",
    execuser    => $binary_user,
  }

  exec { "fix permissions ${name}":
    command => "chmod ${$binary_rights} ${binary_command_name}",
    path    => '/usr/bin:/bin:/usr/sbin:/sbin',
    cwd     => $binary_target_dir,
    user    => $binary_user,
    require => Wget::Fetch["wget::fetch ${name}"],
  }

}