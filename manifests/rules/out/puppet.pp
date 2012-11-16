class shorewall6::rules::out::puppet {
    include ::shorewall6::rules::puppet
    # we want to connect to the puppet server
    shorewall6::rule { 'me-net-puppet_tcp':
        source          =>      '$FW',
        destination     =>      'net:$PUPPETSERVER',
        proto           =>      'tcp',
        destinationport =>      '$PUPPETSERVER_PORT,$PUPPETSERVER_SIGN_PORT',
        order           =>      340,
        action          =>      'ACCEPT';
    }
}
