define shorewall6::rfc1918(
    $action = 'logdrop',
    $order='100'
){
    shorewall6::entry{"rfc1918-${order}-${name}":
        line => "${name} ${action}"
    }   
}
