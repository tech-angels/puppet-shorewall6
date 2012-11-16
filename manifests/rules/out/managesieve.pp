class shorewall6::rules::out::managesieve {
    shorewall6::rule {
        'me-net-tcp_managesieve':
            source          =>      '$FW',
            destination     =>      'net',
            proto           =>      'tcp',
            destinationport =>      '2000',
            order           =>      260,
            action          =>      'ACCEPT';
    }
}
