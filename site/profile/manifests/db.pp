class profile::db {
  include profile::ssh_server
  package {'postgresql':
    ensure => present,
  }
  service {'postgresql':
    ensure => 'running',
    enable => 'true',
  }
}
