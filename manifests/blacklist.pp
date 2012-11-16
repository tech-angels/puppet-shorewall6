define shorewall6::blacklist(
    $proto = '-',
    $port = '-',
    $order='100'
){
    shorewall6::entry{"blacklist-${order}-${name}":
        line => "${name} ${proto} ${port}",
    }           
}
