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