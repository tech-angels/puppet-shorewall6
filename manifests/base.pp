class shorewall6::base {
    
    if ($operatingsystem != 'Debian' or ($lsbdistcodename != 'squeeze' and $lsbdistcodename != 'wheezy')) 
       and ($operatingsystem != 'Ubuntu' or ($lsbdistcodename != 'precise')) {
      fail "The shorewall6 module hasn't been tested on $operatingsystem $lsbdistcodename"
    }

    package { 'shorewall6':
        ensure => present,
    }

    # This file has to be managed in place, so shorewall can find it
    file {
      '/etc/shorewall6/shorewall6.conf':
        # use OS specific defaults, but use Default if no other is found
        source => [
            "puppet:///modules/site-shorewall6/${fqdn}/shorewall6.conf.${operatingsystem}",
            "puppet:///modules/site-shorewall6/${fqdn}/shorewall6.conf",
            "puppet:///modules/site-shorewall6/shorewall6.conf.${operatingsystem}.${lsbdistcodename}",
            "puppet:///modules/site-shorewall6/shorewall6.conf.${operatingsystem}",
            "puppet:///modules/site-shorewall6/shorewall6.conf",
            "puppet:///modules/shorewall6/shorewall6.conf.${operatingsystem}.${lsbdistcodename}",
            "puppet:///modules/shorewall6/shorewall6.conf.${operatingsystem}.${lsbmajdistrelease}",
            "puppet:///modules/shorewall6/shorewall6.conf.${operatingsystem}",
            "puppet:///modules/shorewall6/shorewall6.conf"
        ],
        require => Package[shorewall6],
        notify => Service[shorewall6],
        owner => root, group => 0, mode => 0644;
      '/etc/shorewall6/puppet':
        ensure => directory,
        require => Package[shorewall6],
        owner => root, group => 0, mode => 0644;
    }

    service{shorewall6:
        ensure  => running,
        enable  => true,
        hasstatus => true,
        hasrestart => true,
        require => Package[shorewall6],
    }
}
