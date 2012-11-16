class shorewall6::rules::out::pop3 {
    shorewall6::rule {
        'me-net-tcp_pop3_s':
            source          =>      '$FW',
            destination     =>      'net',
            proto           =>      'tcp',
            destinationport =>      'pop3,pop3s',
            order           =>      260,
            action          =>      'ACCEPT';
    }
}
