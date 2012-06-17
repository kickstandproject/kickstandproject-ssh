class ssh::server::service {
  service { $ssh::params::server::servicename:
    ensure      => $ssh::server::enable,
    enable      => $ssh::server::enable,
    hasrestart  => $ssh::params::server::hasrestart,
    hasstatus   => $ssh::params::server::hasstatus,
    require     => Class['ssh::server::config'],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
