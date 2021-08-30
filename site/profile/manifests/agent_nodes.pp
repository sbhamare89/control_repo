class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  dockeragent::node {'minetest.puppet.vm':}
  dockeragent::node {'servera.puppet.vm':}
  dockeragent::node {'serverb.puppet.vm':}
  dockeragent::node {'serverc.puppet.vm':}
  dockeragent::node {'serverd.puppet.vm':}
  host {'web.puppet.vm':
    ensure => present,
    ip => '172.18.0.3',
  }
  host {'db.puppet.vm':
    ensure => present,
    ip => '172.18.0.2',
  }
  host {'minetest.puppet.vm':
    ensure => present,
    ip => '172.18.0.4',
  }
    host {'servera.puppet.vm':
    ensure => present,
    ip => '172.18.0.5',
  }
    host {'serverb.puppet.vm':
    ensure => present,
    ip => '172.18.0.6',
  }
    host {'serverc.puppet.vm':
    ensure => present,
    ip => '172.18.0.7',
  }
    host {'serverd.puppet.vm':
    ensure => present,
    ip => '172.18.0.8',
  }
}
