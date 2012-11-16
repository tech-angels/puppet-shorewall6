class shorewall6::rules::http {
    shorewall6::rule { 'net-me-http-tcp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'tcp',
        destinationport => '80',
        order           => 240,
        action          => 'ACCEPT';
    }
}
