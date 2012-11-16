define shorewall6::proxyarp(
    $interface,
    $external,
    $haveroute = yes,
    $persistent = no,
    $order='100'
    ){
    shorewall6::entry{"proxyarp-${order}-${name}":
        line => "# ${name}\n${name} ${interface} ${external} ${haveroute} ${persistent}"
    }
}
