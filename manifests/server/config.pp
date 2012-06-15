class ssh::server::config {
  include ssh::common::config

  file { $ssh::params::server::configfile:
    ensure  => file,
    content => template('ssh/etc/ssh/sshd_config.erb'),
    group   => $ssh::params::group,
    mode    => $ssh::params::mode,
    notify  => Class['ssh::server::service'],
    owner   => $ssh::params::owner,
    require => Class['ssh::server::install'],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
