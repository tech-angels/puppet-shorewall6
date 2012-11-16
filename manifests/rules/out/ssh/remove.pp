class shorewall6::rules::out::ssh::remove inherits shorewall6::rules::out::ssh {
  Shorewall6::Rule['me-net-tcp_ssh']{
    ensure => absent,
  }
}
