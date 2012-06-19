class ssh::client::config {
  include ssh::common::config

  file { $ssh::params::client::configfile:
    ensure  => file,
    content => template('ssh/etc/ssh/ssh_config.erb'),
    group   => $ssh::params::group,
    mode    => $ssh::params::mode,
    owner   => $ssh::params::owner,
    require => Class['ssh::client::install'],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
