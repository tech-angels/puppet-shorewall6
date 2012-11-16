class shorewall6::rules::postgres {
    shorewall6::rule { 'net-me-tcp_postgres':
        source          => 'net',
        destination     => '$FW',
        proto           => 'tcp',
        destinationport => '5432',
        order           => 250,
        action          => 'ACCEPT';
    }
}
