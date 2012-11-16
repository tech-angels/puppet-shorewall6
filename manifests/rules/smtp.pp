class shorewall6::rules::smtp {
    shorewall6::rule { 'net-me-smtp-tcp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'tcp',
        destinationport => '25',
        order           => 240,
        action          => 'ACCEPT';
    }
}
