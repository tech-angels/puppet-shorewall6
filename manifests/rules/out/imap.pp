class shorewall6::rules::out::imap {
    shorewall6::rule {
        'me-net-tcp_imap_s':
            source          =>      '$FW',
            destination     =>      'net',
            proto           =>      'tcp',
            destinationport =>      '143,993',
            order           =>      260,
            action          =>      'ACCEPT';
    }
}
