define shorewall6::policy(
    $sourcezone,
    $destinationzone,
    $policy, $shloglevel = '-',
    $limitburst = '-',
    $order
){
    shorewall6::entry{"policy-${order}-${name}":
        line => "# ${name}\n${sourcezone} ${destinationzone} ${policy} ${shloglevel} ${limitburst}",
    }
}

