class shorewall6::rules::munin(
  $munin_port = hiera('munin_port','4949'),
  $munin_collector = hiera('munin_collector','127.0.0.1'),
  $collector_source = hiera('shorewall_munin_in_collector_source','net')
){
    shorewall6::params { 'MUNINPORT': value => $munin_port }
    shorewall6::params { 'MUNINCOLLECTOR': value => $munin_collector }
    shorewall6::rule{'net-me-munin-tcp':
        source          => "${collector_source}:\$MUNINCOLLECTOR",
        destination     => '$FW',
        proto           => 'tcp',
        destinationport => '$MUNINPORT',
        order           => 240,
        action          => 'ACCEPT';
    }
}
