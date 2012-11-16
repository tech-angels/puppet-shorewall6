class shorewall6::rules::ntp::server {
    shorewall6::rule {'net-me-udp_ntp':
        source          => 'net',
        destination     => '$FW',
        proto           => 'udp',
        destinationport => '123',
        order           => 241, 
        action          => 'ACCEPT';
    }
}
