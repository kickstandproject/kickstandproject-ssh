#
# == Class: ssh::params::client
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
class ssh::params::client inherits ssh::params {
  $configfile = $::operatingsystem ? {
    default => '/etc/ssh/ssh_config',
  }

  $packagename = $::operatingsystem ? {
    default => 'openssh-client',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
