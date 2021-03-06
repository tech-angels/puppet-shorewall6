class shorewall6::rules::out::ibackup {
    case $shorewall_ibackup_host {
      '': { fail("You need to define \$shorewall_ibackup_host for ${fqdn}") }
    }
    shorewall6::rule { 'me-net-tcp_backupssh':
        source          => '$FW',
        destination     => "net:${shorewall_ibackup_host}",
        proto           => 'tcp',
        destinationport => 'ssh',
        order           => 240,
        action          => 'ACCEPT';
    }
}
