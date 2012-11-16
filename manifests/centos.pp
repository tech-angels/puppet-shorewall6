class shorewall6::centos inherits shorewall6::base {
  if $lsbmajdistrelease == '6' {
    # workaround for
    # http://comments.gmane.org/gmane.comp.security.shorewall/26991
    file{'/etc/shorewall6/params':
      ensure => link,
      target => '/etc/shorewall6/puppet/params',
      before => Service['shorewall6']
    }
  }
}
