class ssh::server::init {
  include ssh::server::install
  include ssh::server::config
  include ssh::server::service

  if ($ssh::server::monitor) {
    include ssh::server::monitor
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
