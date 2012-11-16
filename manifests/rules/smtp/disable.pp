class shorewall6::rules::smtp::disable inherits shorewall6::rules::smtp {
  Shorewall6::Rule['net-me-smtp-tcp']{
    action          => 'DROP'
  }
}
