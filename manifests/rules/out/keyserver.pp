class shorewall6::rules::out::keyserver {
  shorewall6::rule {
    'me-net-tcp_keyserver':
      source          =>  '$FW',
      destination     =>  'net',
      proto           =>  'tcp',
      destinationport =>  '11371,11372',
      order           =>  240,
      action          => 'ACCEPT'; 
 }
}
