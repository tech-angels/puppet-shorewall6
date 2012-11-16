class shorewall6::rules::out::smtp {
    shorewall6::rule {
        'me-net-tcp_smtp':
            source          =>  '$FW',
            destination     =>  'net',
            proto           =>  'tcp',
            destinationport =>  'smtp',
            order           =>  240,
            action          => 'ACCEPT';
    }
}
