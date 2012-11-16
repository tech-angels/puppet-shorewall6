class shorewall6::rules::rsync {
    shorewall6::rule{'me-net-rsync-tcp':
        source          => '$FW',
        destination     => 'net',
        proto           => 'tcp',
        destinationport => '873',
        order           => 240,
        action          => 'ACCEPT';
    }
}
