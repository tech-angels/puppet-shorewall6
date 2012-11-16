class shorewall6::rules::dns::disable inherits shorewall6::rules::dns {
  Shorewall6::Rule['net-me-tcp_dns', 'net-me-udp_dns']{
        action  => 'DROP',
    }
}
