class shorewall6::rules::smtps {
	shorewall6::rule {'net-me-smtps-tcp':
        source          =>      'net',
        destination     =>      '$FW',
        proto           =>      'tcp',
        destinationport =>      '465',
        order           =>      240,
        action          =>      'ACCEPT';
	}
}
