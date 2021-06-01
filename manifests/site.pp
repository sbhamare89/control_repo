node default {

file { '/root/README':
    ensure => file,
    content => "Data from github.com"
  }
}
