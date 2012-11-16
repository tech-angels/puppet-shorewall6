class shorewall6::rules::ssh(
  $ports,
  $source = hiera('shorewall_ssh_in_source','net')
) {
  shorewall6::rule { 'net-me-tcp_ssh':
    source          => $shorewall6::rules::ssh::source,
    destination     => '$FW',
    proto           => 'tcp',
    destinationport => join($shorewall6::rules::ssh::ports,','),
    order           => 240,
    action          => 'ACCEPT';
  }
}
