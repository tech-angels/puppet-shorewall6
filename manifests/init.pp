class shorewall6 { 

  case $operatingsystem {
    gentoo: { include shorewall6::gentoo }
    debian: { include shorewall6::debian }
    centos: { include shorewall6::centos }
    ubuntu: {
    case $lsbdistcodename {
      karmic: { include shorewall6::ubuntu::karmic }
      default: { include shorewall6::debian }
      }
    }
    default: {
      notice "unknown operatingsystem: $operatingsystem" 
		  include shorewall6::base
    }
  }

  # See http://www.shorewall.net/3.0/Documentation.htm#Zones
  shorewall6::managed_file{ zones: }
  # See http://www.shorewall.net/3.0/Documentation.htm#Interfaces
  shorewall6::managed_file{ interfaces: }
  # See http://www.shorewall.net/3.0/Documentation.htm#Hosts
  shorewall6::managed_file { hosts: }
  # See http://www.shorewall.net/3.0/Documentation.htm#Policy
  shorewall6::managed_file { policy: }
  # See http://www.shorewall.net/3.0/Documentation.htm#Rules
  shorewall6::managed_file { rules: }
  # See http://www.shorewall.net/3.0/Documentation.htm#Masq
  shorewall6::managed_file{ masq: }
  # See http://www.shorewall.net/manpages6/shorewall6-proxyndp.html
  shorewall6::managed_file { proxyndp: }
  # See http://www.shorewall.net/3.0/Documentation.htm#NAT
  shorewall6::managed_file { nat: }
  # See http://www.shorewall.net/3.0/Documentation.htm#Blacklist
  shorewall6::managed_file { blacklist: }
  # See http://www.shorewall.net/3.0/Documentation.htm#rfc1918
  shorewall6::managed_file { rfc1918: }
  # See http://www.shorewall.net/3.0/Documentation.htm#Routestopped
  shorewall6::managed_file { routestopped: }
  # See http://www.shorewall.net/3.0/Documentation.htm#Variables 
  shorewall6::managed_file { params: }
  # http://www.shorewall.net/manpages/shorewall-providers.html
  shorewall6::managed_file { providers: }
}
