class shorewall6::rules::imap {
    shorewall6::rule {
        'net-me-tcp_imap_s':
            source          =>      'net',
            destination     =>      '$FW',
            proto           =>      'tcp',
            destinationport =>      '143,993',
            order           =>      260,
            action          =>      'ACCEPT';
    }
}
