class shorewall6::rules::dns {
    shorewall6::rule {
        'net-me-tcp_dns':
                        source          =>      'net',
                        destination     =>      '$FW',
                        proto           =>      'tcp',
                        destinationport =>      '53',
                        order           =>      240,
                        action          =>      'ACCEPT';
        'net-me-udp_dns':
                        source          =>      'net',
                        destination     =>      '$FW',
                        proto           =>      'udp',
                        destinationport =>      '53',
                        order           =>      240,
                        action          =>      'ACCEPT';
    }
}
