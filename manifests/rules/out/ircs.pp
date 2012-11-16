class shorewall6::rules::out::ircs {
    shorewall6::rule{'me-net-ircs-tcp':
        source          => '$FW',
        destination     => 'net',
        proto           => 'tcp',
        destinationport => '6669',
        order           => 240,
        action          => 'ACCEPT';
    }
}
