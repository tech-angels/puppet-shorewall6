class shorewall6::rules::managesieve {
    shorewall6::rule {
        'net-me-tcp_managesieve':
            source          =>      'net',
            destination     =>      '$FW',
            proto           =>      'tcp',
            destinationport =>      '2000',
            order           =>      260,
            action          =>      'ACCEPT';
    }
}
