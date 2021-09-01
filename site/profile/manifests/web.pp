class profile::web {
    include profile::ssh_server
  package {'httpd':
    ensure => present,
  }
  service {'httpd':
    ensure => 'running',
    enable => 'true',
  }
}
