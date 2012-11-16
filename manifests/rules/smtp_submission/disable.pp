class shorewall6::rules::smtp_submission::disable inherits shorewall6::rules::smtp_submission {
  Shorewall6::Rule['net-me-smtp_submission-tcp']{
    action          => 'DROP'
  }
}
