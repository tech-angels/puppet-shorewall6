define shorewall6::zone(
    $type,
    $options = '-',
    $in = '-',
    $out = '-',
    $parent = '-',
    $order = 100
){
    $real_name = $parent ? { '-' => $name, default => "${name}:${parent}" }
    shorewall6::entry { "zones-${order}-${name}":
        line => "${real_name} ${type} ${options} ${in} ${out}"
    }
}

