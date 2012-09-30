#
# == Class: ssh::server::config
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
