class shorewall6::rules::syslog {
    shorewall6::rule { 'net-me-syslog-udp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'udp',
        destinationport => '514',
        order           => 240,
        action          => 'ACCEPT';
    }
}


