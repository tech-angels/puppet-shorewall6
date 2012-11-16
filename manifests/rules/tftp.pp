class shorewall6::rules::tftp {
    shorewall6::rule { 'net-me-tftp-tcp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'tcp',
        destinationport => '69',
        order           => 240,
        action          => 'ACCEPT';
    }
    shorewall6::rule { 'net-me-tftp-udp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'udp',
        destinationport => '69',
        order           => 240,
        action          => 'ACCEPT';
    }
}
