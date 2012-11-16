define shorewall6::params($value, $order='100'){
    shorewall6::entry{"params-${order}-${name}":
        line => "${name}=${value}",
    }
}
