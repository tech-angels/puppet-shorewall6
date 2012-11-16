class shorewall6::rules::tomcat {
    # open tomcat port
    shorewall6::rule {
        'net-me-tomcat-tcp':
            source          => 'net',
            destination     => '$FW',
            proto           => 'tcp',
            destinationport => '8080',
            order           => 240,
            action          => 'ACCEPT';
    }
}
