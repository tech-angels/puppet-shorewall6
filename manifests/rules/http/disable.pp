class shorewall6::rules::http::disable inherits shorewall6::rules::http {
  Shorewall6::Rule['net-me-http-tcp']{
        action  => 'DROP',
    }
}
