class shorewall6::gentoo inherits shorewall6::base {
    Package[shorewall]{
        category => 'net-firewall',
    }
}
