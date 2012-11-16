class shorewall6::rules::out::postgres {
    shorewall6::rule {
        'me-net-tcp_postgres':
            source          =>  '$FW',
            destination     =>  'net',
            proto           =>  'tcp',
            destinationport =>  '5432',
            order           =>  240,
            action          => 'ACCEPT';
    }
}
