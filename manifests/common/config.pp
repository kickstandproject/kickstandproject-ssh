class ssh::common::config {
  file { $ssh::params::basedir:
    ensure  => directory,
    group   => $ssh::params::group,
    mode    => $ssh::params::mode,
    owner   => $ssh::params::owner,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
