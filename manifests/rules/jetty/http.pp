class shorewall6::rules::jetty::http {
    # dnat
    shorewall6::rule {
        'dnat-http-to-jetty':
            destination     =>      "net:${ipaddress}:8080",
            destinationport =>      '80',
            source          =>      'net', proto => 'tcp', order => 140, action => 'DNAT';
    }
}
