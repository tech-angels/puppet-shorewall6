define shorewall6::nat(
    $interface,
    $internal,
    $all = 'no',
    $local = 'yes',
    $order='100'
){
    shorewall6::entry{"nat-${order}-${name}":
        line => "${name} ${interface} ${internal} ${all} ${local}"
    }           
}
