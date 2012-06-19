# == Class: ssh::client
#
# This class manages the SSH client
#
# === Parameters
#
# [*options*]
#
# === Variables
#
# === Examples
#
#  class { 'ssh::client': }
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
# of the GNU General Public License Version 2. See the LICENSE
# file at the top of the source tree.
#
class ssh::client(
  $options  = {},
) {
  $defaults = {
    'GSSAPIAuthentication'      => 'yes',
    'GSSAPIDelegateCredentials' => 'no',
    'HashKnownHosts'            => 'yes',
    'SendEnv'                   => 'LANG LC_*',
  }
  $options_real = merge($defaults, $options)

  include ssh::params::client
  include ssh::client::init
}

# vim:sw=2:ts=2:expandtab:textwidth=79
