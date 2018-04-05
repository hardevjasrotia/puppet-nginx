define nginx::vhost(
  Interger $port		     = 80,
  String $priority		     = '50',
  String $server_aliases	     = '',
  Boolean $enable		     = true,
  String $owner			     = $::ngnix::config_owner,
  String $group			     = $::ngnix::config_group,
  String $mode			     = $::ngnix::config_mode,
  String $log_dir		     = $::ngnix::config_log_dir,
  Optina[String] $config_vdir_enable = $::ngnix::config_vdir_enable,
  String $vhost_dir		     = $::ngnix::vhost_dir,

){
  $vhost_docroot = "${::ngnix::docroot}/${name}"  

  file{"${vhost_dir}/${priority}-${name}.conf":
    ensure  => file,
    content => template("${module_name}/vhost/vhost.conf.erb"),
    mode    => $mode,
    owner   => $owner,
    group   => $group,
    notify  => Service['ngnix_service'],
 }
  file {$vhost_docroot:
    ensure  => directory,
    mode    => '0755',
    owner   => $owner,
    group   => $group,

  }   
}

