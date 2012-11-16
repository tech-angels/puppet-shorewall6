class shorewall6::rules::tinc {
    shorewall6::rule { 'net-me-tinc-tcp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'tcp',
        destinationport => '655',
        order           => 240,
        action          => 'ACCEPT';
    }
    shorewall6::rule { 'me-net-tinc-tcp':
        source          => '$FW',
        destination     => 'net',
        proto           => 'tcp',
        destinationport => '655',
        order           => 240,
        action          => 'ACCEPT';
    }
    shorewall6::rule { 'net-me-tinc-udp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'udp',
        destinationport => '655',
        order           => 240,
        action          => 'ACCEPT';
    }
    shorewall6::rule { 'me-net-tinc-udp':
        source          => '$FW',
        destination     => 'net',
        proto           => 'udp',
        destinationport => '655',
        order           => 240,
        action          => 'ACCEPT';
    }
}
