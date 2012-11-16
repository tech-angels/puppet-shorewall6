define shorewall6::rules::sobby::instance( $port ){
  shorewall6::rule {
    "net-me-tcp_sobby_${name}":
      source          => 'net',
      destination     => '$FW',
      proto           => 'tcp',
      destinationport => $port,
      order           => 240,
      action          => 'ACCEPT';
  }
}
