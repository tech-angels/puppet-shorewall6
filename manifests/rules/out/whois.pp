class shorewall6::rules::out::whois {
    # open whois tcp port 
    shorewall6::rule {'me-net-tcp_whois':
        source          => '$FW',
        destination     => 'net',
        proto           => 'tcp',
        destinationport => '43',
        order           => 251,
        action          => 'ACCEPT';
    }
}
