# == Class: ssh::server
#
# This class manages the SSH server
#
# === Parameters
#
# [*enable*]
#
# [*monitor*]
#
# [*options*]
#
# === Variables
#
# === Examples
#
#  class { 'ssh::server': }
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
class ssh::server(
  $enable   = true,
  $monitor  = true,
  $options  = {}
) {
  require ssh::client

  $defaults = {
    'PasswordAuthentication'  => 'no',
    'PermitRootLogin'         => 'no',
    'Port'                    => '22',
  }
  $options_real = merge($defaults, $options)

  include ssh::params::server
  include ssh::server::init
}

# vim:sw=2:ts=2:expandtab:textwidth=79
