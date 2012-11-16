class shorewall6::rules::out::ssh::disable inherits shorewall6::rules::out::ssh {
  Shorewall6::Rule['me-net-tcp_ssh']{
    action => 'DROP',
  }
}
