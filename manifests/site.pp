node default {

}
node 'master.puppet.vm' {
    include role::master_server
}

node 'web.puppet.vm' {
    include role::app_server
}

node 'db.puppet.vm' {
    include role::db_server
}

node 's1.puppet.vm' {
    include role::base_server
}

node 's2.puppet.vm' {
    include role::base_server
}

node 's3.puppet.vm' {
    include role::base_server
}

node 's4.puppet.vm' {
    include role::base_server
}
