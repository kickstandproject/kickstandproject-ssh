#
# == Class: ssh::server::init
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
class ssh::server::init {
  include ssh::server::install
  include ssh::server::config
  include ssh::server::service

  if ($ssh::server::monitor) {
    include ssh::server::monitor
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
