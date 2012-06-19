class ssh::client::install {
  package { $ssh::params::client::packagename:
    ensure  => present,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
