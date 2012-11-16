define shorewall6::routestopped(
    $interface = '',
    $host = '-',
    $options = '',
    $order='100'
){
    $real_interface = $interface ? { 
        '' => $name,
        default => $interface,
    }   
    shorewall6::entry{"routestopped-${order}-${name}":
        line => "${real_interface} ${host} ${options}",
    }           
}
