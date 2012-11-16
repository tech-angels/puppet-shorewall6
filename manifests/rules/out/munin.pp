class shorewall6::rules::out::munin {
    shorewall6::rule { 'me-net-rcp_muninhost':
        source          => '$FW',
        destination     => 'net',
        proto           => 'tcp',
        destinationport => '4949',
        order           => 340,
        action          => 'ACCEPT';
    }
}
