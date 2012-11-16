class shorewall6::rules::pop3 {
    shorewall6::rule {
        'net-me-tcp_pop3_s':
            source          =>      'net',
            destination     =>      '$FW',
            proto           =>      'tcp',
            destinationport =>      'pop3,pop3s',
            order           =>      260,
            action          =>      'ACCEPT';
    }
}
