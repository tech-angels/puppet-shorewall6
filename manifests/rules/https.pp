class shorewall6::rules::https {
    shorewall6::rule { 'net-me-https-tcp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'tcp',
        destinationport => '443',
        order           => 240,
        action          => 'ACCEPT';
    }
}
