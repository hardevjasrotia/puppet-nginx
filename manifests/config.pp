class ngnix::config (
  String $ensure		= $::ngnix::config_ensure,
  String $config_dir		= $::nginx::config_dir,
  String $mode			= $::ngnix::config_mode,
  String $owner			= $::ngnix::config_owner,
  String $group			= $::ngnix::config_group,
  String $confd			= $::ngnix::config_confd,
  String $log_dir		= $::ngnix::config_log_dir,
  String $pid_dir		= $::ngnix::config_pid_dir,
  Optional[String] $vdir_enable = $::ngnix::config_vdir_enable,
  String $process_user		= $::ngnix::config_process_user,
  String $docroot		= $::ngnix::docroot,

){
  file {'ngnix_conf':
    ensure => $ensure,
    path   => "${config_dir}/ngnix.conf",
    mode   => $mode,
    owner  => $owner,
    group  => $group,
    content => template("${module_name}/conf.d/ngnix.conf.erb"),
 }

}
