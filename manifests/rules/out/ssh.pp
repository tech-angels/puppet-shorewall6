class shorewall6::rules::out::ssh {
    shorewall6::rule { 'me-net-tcp_ssh':
        source          => '$FW',
        destination     => 'net',
        proto           => 'tcp',
        destinationport => 'ssh',
        order           => 240,
        action          => 'ACCEPT';
    }
}
