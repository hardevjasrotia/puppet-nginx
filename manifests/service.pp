class ngnix::service(
  String $ensure		= $::ngnix::config_ensure,
  String $service_name		= $::ngnix::service_name,
  String $pattern		= $::ngnix::service_pattern,
  Boolean $enable		= $::ngnix::service_enable,
  Boolean $hasstaus		= $::ngnix::service_hasstatus,
  Boolean $hasrestart		= $::ngnix::service_hasrestart,

){
  service {'ngnix_service':
    ensure      => $ensure,
    name        => $service_name,
    enable      => $enable,
    hasstatus   => $hasstatus,
    hasrestart  => $hasrestart,
    pattern     => $pattern,
 }

}
