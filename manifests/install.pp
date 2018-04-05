class ngnix::install (
  String $ensure 		= $::ngnix::ensure,
  String $package_name		= $::ngnix::package_name,

){
  package {'install_ngnix':
    ensure  => $ensure,
    name    => $package_name,
 }
}
