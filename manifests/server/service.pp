#
# == Class: ssh::server::service
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
