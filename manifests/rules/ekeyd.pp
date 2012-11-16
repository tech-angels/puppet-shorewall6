class shorewall6::rules::ekeyd {
  shorewall6::rule { 'net-me-tcp_ekeyd':
    source          => 'net',
    destination     => '$FW',
    proto           => 'tcp',
    destinationport => '8888',
    order           => 240,
    action          => 'ACCEPT';
  }
}
