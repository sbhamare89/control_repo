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

node 'servera.puppet.vm' {
    include role::servers
}

node 'serverb.puppet.vm' {
    include role::servers
}
