define shorewall6::proxyndp(
    $address=$name,
    $interface='-',
    $external,
    $haveroute = yes,
    $persistent = no,
    $order='100'
    ){
    if $haveroute != 'yes' and $interface == '-' {
      fail("interface parameter is needed if haveroute is not set to 'yes'")
    }

    shorewall6::entry{"proxyndp-${order}-${address}${external}":
        line => "# ${address} proxy on ${external}\n${address} ${interface} ${external} ${haveroute} ${persistent}"
    }
}
