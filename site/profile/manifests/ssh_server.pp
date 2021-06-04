class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDYL4kOW0baujKBLHTeEcObyEKqpgCCT8rfGPQAJnMI3OdX+DYeqAKXGDz6k1ylQ7uqF44hyZiZn88cOg+arOJtVmsBwc1G8iphL6z9YhoqSaWiryyRBlAPC5TQEAG8+9zaliShwc/qDHXWb9cvyFYjxnh4repoqCtckI/ZGS2h0Lkr0nMXgh8jmfjd35D9xBerNlHq74RbaBE2/WV5C7m/YJw3bhDflyuQyZlvQD8y+oy2xmdVI1WMQeeCKmD7MhTq3ObimQbDt5VHK72AHhO8EuIB/mD+Pdoqm5E0arpEsUEwiImOPqHu+ICx36Tge5+NW+2RGouIHAQ5Bu2SvVfn',
  }
}
