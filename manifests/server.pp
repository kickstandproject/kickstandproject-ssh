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
