define shorewall6::rule_section(
    $order
){
    shorewall6::entry{"rules-${order}-${name}":
        line => "SECTION ${name}",
    }       
}
