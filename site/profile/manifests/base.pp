class profile::base {
  user {'admin':
    ensure => present,  
  }
  
  user { 'root': 
  ensure   => present,
  password => '$1$VeHmHeY8$0hud0AU6oUE2Y2BO5jPlj1',
  }
  
  include profile::ssh_server
}
