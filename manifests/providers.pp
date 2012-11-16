define shorewall6::providers(
    $provider,
    $number = '',
    $mark = '',
    $duplicate = 'main',
    $interface = '',
    $gateway = '',
    $options = '',
    $copy = '',
    $order='100'
){
    shorewall6::entry{"providers-${order}-${name}":
        line => "# ${name}\n${provider} ${number} ${mark} ${duplicate} ${interface} ${gateway} ${options} ${copy}"
    }
}

