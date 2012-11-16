class shorewall6::rules::jetty {
    # open jetty port
    shorewall6::rule {
        'net-me-jetty-tcp':
            source          => 'net',
            destination     => '$FW',
            proto           => 'tcp',
            destinationport => '8080',
            order           => 240,
            action          => 'ACCEPT';
    }
}
