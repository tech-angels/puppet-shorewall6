class shorewall6::rules::gitdaemon::absent inherits shorewall6::rules::gitdaemon {
  Shorewall6::Rule['net-me-tcp_gitdaemon']{
    ensure => absent,
  }
}
