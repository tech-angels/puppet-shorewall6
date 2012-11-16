class shorewall6::rules::out::silc {
  shorewall6::rule{
    'me-net-silc-tcp':
      source          => '$FW',
      destination     => 'net',
      proto           => 'tcp',
      destinationport => '706',
      order           => 240,
      action          => 'ACCEPT';
    'me-net-silc-udp':
      source          => '$FW',
      destination     => 'net',
      proto           => 'udp',
      destinationport => '706',
      order           => 240,
      action          => 'ACCEPT';

  }
}
