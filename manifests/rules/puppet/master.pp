class shorewall6::rules::puppet::master {
    include ::shorewall6::rules::puppet
    shorewall6::rule { 'net-me-tcp_puppet-main':
        source          => 'net',
        destination     => '$FW',
        proto           => 'tcp',
        destinationport => '$PUPPETSERVER_PORT,$PUPPETSERVER_SIGN_PORT',
        order           => 240,
        action          => 'ACCEPT';
    }
}
