class shorewall6::rules::openfire {
  include shorewall6::rules::jaberserver

  shorewall6::rule { 'me-all-openfire-tcp':
    source          => '$FW',
    destination     => 'all',
    proto           => 'tcp',
    destinationport => '7070,7443,7777',
    order           => 240,
    action          => 'ACCEPT';
  }
}
