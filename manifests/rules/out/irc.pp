class shorewall6::rules::out::irc {
    shorewall6::rule{'me-net-irc-tcp':
        source          => '$FW',
        destination     => 'net',
        proto           => 'tcp',
        destinationport => '6667',
        order           => 240,
        action          => 'ACCEPT';
    }
}
