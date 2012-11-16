define shorewall6::interface(
    $zone,
    $broadcast = 'detect',
    $options = 'tcpflags,blacklist,routefilter,nosmurfs,logmartians',
    $dhcp = false,
    $order = 100
){
    if $dhcp {
        $options_real = "${options},dhcp"
    } else {
        $options_real = $options
    }

    shorewall6::entry { "interfaces-${order}-${name}":
        line => "${zone} ${name} ${broadcast} ${options_real}",
    }
}

