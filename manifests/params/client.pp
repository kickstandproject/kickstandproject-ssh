class ssh::params::client inherits ssh::params {
  $configfile = $::operatingsystem ? {
    default => '/etc/ssh/ssh_config',
  }

  $packagename = $::operatingsystem ? {
    default => 'openssh-client',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
