#
# == Class: ssh::params::server
#
# === Authors
#
# Paul Belanger <paul.belanger@polybeacon.com>
#
# === Copyright
#
# Copyright (C) 2012, PolyBeacon, Inc.
#
# This program is free software, distributed under the terms
# of the Apache License, Version 2.0. See the LICENSE file at
# the top of the source tree.
#
class ssh::params::server inherits ssh::params {
  $configfile = $::operatingsystem ? {
    default => '/etc/ssh/sshd_config',
  }

  $hasrestart = $::operatingsystem ? {
    default => true,
  }

  $hasstatus = $::operatingsystem ? {
    default => true,
  }

  $packagename = $::operatingsystem ? {
    default => 'openssh-server',
  }

  $processname = $::operatingsystem ? {
    default => 'sshd',
  }

  $servicename = $::operatingsystem ? {
    default => 'ssh',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
