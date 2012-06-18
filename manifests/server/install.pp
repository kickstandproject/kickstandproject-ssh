class ssh::server::install {
  package { $ssh::params::server::packagename:
    ensure  => present,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
