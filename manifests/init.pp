class kibana3 (
  $elasticsearch_server = $kibana3::params::elasticsearch_server,
  $default_route        = $kibana3::params::default_route,
  $kibana_index         = $kibana3::params::kibana_index,
){

  package {'kibana3':
    ensure => present;
  }

  file { '/var/vhosts/kibana3/htdocs/config.js':
    ensure   => 'file',
    group    => '0',
    mode     => '0664',
    owner    => '0',
    content  => template('kibana3/config.js.erb')
  }

}
