class shorewall6::rules::jetty::ssl {
    shorewall6::rule {
        'net-me-jettyssl-tcp':
            source          => 'net',
            destination     => '$FW',
            proto           => 'tcp',
            destinationport => '8443',
            order           => 240,
            action          => 'ACCEPT';
    }
}
