class shorewall6::rules::mysql {
	shorewall6::rule {
		'net-me-tcp_mysql':
            source          => 'net',
            destination     => '$FW',
            proto           => 'tcp',
            destinationport => '3306',
            order           => 240,
            action          => 'ACCEPT';
	}
}
