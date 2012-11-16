class shorewall6::rules::keyserver {
	shorewall6::rule {
		'net-me-tcp_keyserver':
      source      => 'net',
  		destination     => '$FW',
	  	proto           => 'tcp',
		  destinationport => '11371,11372',
   		order           => 240,
	    action          => 'ACCEPT';
	}
}
