class shorewall6::rules::cobbler {
     shorewall6::rule{'net-me-syslog-xmlrpc-tcp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'tcp',
        destinationport => '25150:25151',
        order           => 240,
        action          => 'ACCEPT';
    }
    shorewall6::rule{'net-me-syslog-xmlrpc-udp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'udp',
        destinationport => '25150:25151',
        order           => 240,
        action          => 'ACCEPT';
    }
    include shorewall6::rules::rsync
}
