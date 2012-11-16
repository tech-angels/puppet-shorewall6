define shorewall6::entry(
    $ensure = present,
    $line
){
  $parts = split($name,'-')
  concat::fragment{"${name}-6":
    ensure => $ensure,
    content => "${line}\n",
    order => $parts[1],
    target => "/etc/shorewall6/puppet/${parts[0]}",
  }
}
