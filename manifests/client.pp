class ssh::client(
  $options  = {}
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
