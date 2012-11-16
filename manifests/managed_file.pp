define shorewall6::managed_file () {
  concat{ "/etc/shorewall6/puppet/$name":
    notify => Service['shorewall6'],
    require => File['/etc/shorewall6/puppet'],
    owner => root, group => 0, mode => 0600;
  }       
  concat::fragment {
    "${name}-header6":
      source => "puppet:///modules/shorewall6/boilerplate/${name}.header",
      target => "/etc/shorewall6/puppet/$name",
      order => '000';
    "${name}-footer6":
      source => "puppet:///modules/shorewall6/boilerplate/${name}.footer",
      target => "/etc/shorewall6/puppet/$name",
      order => '999';
  }       
} 
