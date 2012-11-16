class shorewall6::rules::identd {
  shorewall6::rule { 'net-me-identd-tcp':
    source          => 'net',
    destination     => '$FW',
    proto           => 'tcp',
    destinationport => '113',
    order           => 240,
    action          => 'ACCEPT';
  }
}
