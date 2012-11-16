define shorewall6::host(
    $zone,
    $options = 'tcpflags,blacklist',
    $order='100'
){
    shorewall6::entry{"hosts-${order}-${name}":
        line => "${zone} ${name} ${options}"
    }
}

