# mark is new in 3.4.4
# source (= subnet) = Set of hosts that you wish to masquerade.
# address = If  you  specify  an  address here, SNAT will be used and this will be the source address.
define shorewall6::masq(
    $interface,
    $source, $address = '-',
    $proto = '-',
    $port = '-',
    $ipsec = '-',
    $mark = '',
    $order='100'
){
    shorewall6::entry{"masq-${order}-${name}":
        line => "# ${name}\n${interface} ${source} ${address} ${proto} ${port} ${ipsec} ${mark}"
    }
}

