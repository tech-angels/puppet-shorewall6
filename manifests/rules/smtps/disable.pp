class shorewall6::rules::smtps::disable inherits shorewall6::rules::smtps {
  Shorewall6::Rule['net-me-smtps-tcp']{
        action  => 'DROP',
    }
}
