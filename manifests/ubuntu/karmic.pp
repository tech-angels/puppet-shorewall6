class shorewall6::ubuntu::karmic inherits shorewall6::debian {
  Package['shorewall6']{
    name => 'shorewall-shell',
  }
}
