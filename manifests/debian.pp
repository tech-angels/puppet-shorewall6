class shorewall6::debian inherits shorewall6::base {
    case $shorewall_startup {
      '': { $shorewall_startup = "1" }
    }
    file{'/etc/default/shorewall6':
        #source => "puppet:///modules/shorewall6/debian/default",
        content => template("shorewall6/debian_default.erb"),
        require => Package['shorewall6'],
        notify => Service['shorewall6'],
        owner => root, group => 0, mode => 0644;
    }
    Service['shorewall6']{
        status => '/sbin/shorewall6 status'
    }
}
