class nginx (
  String $ensure		        = $::nginx::params::ensure,
  String $package_name		        = $::ngnix::params::package_name,
  String $config_dir		        = $::ngnix::params::config_dir,
  String $config_ensure		        = $::ngnix::params::config_ensure,
  String $config_mode		        = $::ngnix::params::config_mode,
  String $config_owner		        = $::nginx::params::config_owner,
  String $config_group		        = $::nginx::params::config_group,
  String $config_confd	 	        = $::ngnix::params::config_confd,
  String $config_log_dir	        = $::ngnix::params::config_log_dir,
  String $config_pid_file	        = $::ngnix::params::config_pid_file,
  Optional[String] $config_vdir_enable  = $::ngnix::params::config_vdir_enable,
  String $config_process_user		= $::ngnix::params::config_process_user, 
  String $service_pattern		= $::ngnix::params::service_pattern,
  String $service_ensure		= $::ngnix::params::service_ensure,
  String $service_name			= $::ngnix::params::service_name, 
  Boolean $service_enable		= $::ngnix::params::service_enable,
  Boolean $service_hasstatus		= $::ngnix::params::service_hasstatus,
  Boolean $service_hasrestart		= $::ngnix::parans::service_hasrestart,
  String $docroot			= $::ngnix::params::docroot,

) inherits ::ngnix::params {
  class {'::ngnix::install':}
  -> class {'::ngnix::config':}
  -> class {'::ngnix::service':}

}
