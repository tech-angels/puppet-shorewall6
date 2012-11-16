class shorewall6::rules::gitdaemon {
        shorewall6::rule {'net-me-tcp_gitdaemon':
            source          => 'net',
            destination     => '$FW',
            proto           => 'tcp',
            destinationport => '9418',
            order           => 240,
            action          => 'ACCEPT';
        }
}
