class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  dockeragent::node {'minetest.puppet.vm':}
  dockeragent::node {'s1.puppet.vm':}
  dockeragent::node {'s2.puppet.vm':}
  dockeragent::node {'s3.puppet.vm':}
  dockeragent::node {'s4.puppet.vm':}

  host {'web.puppet.vm':
    ensure => present,
    ip => '172.18.0.2',
  }
  host {'db.puppet.vm':
    ensure => present,
    ip => '172.18.0.3',
  }
  host {'minetest.puppet.vm':
    ensure => present,
    ip => '172.18.0.4',
  }
  
  host {'s1.puppet.vm':
    ensure => absent,
    ip => '172.18.0.5',
  }
  
  host {'s2.puppet.vm':
    ensure => absent,
    ip => '172.18.0.6',
  }
  
  host {'s3.puppet.vm':
    ensure => absent,
    ip => '172.18.0.7',
  }
  
  host {'s4.puppet.vm':
    ensure => absent,
    ip => '172.18.0.8',
  }
}
