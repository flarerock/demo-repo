package{ 'httpd' :
ensure=> installed,
}


group { 'dota2':
    ensure => present,
    gid    => '1050',
}



user{ 'nico' :
        ensure => present,
        uid => 3000,
        groups => dota2,
        home => '/home/nico',
        managehome => true,
        shell => '/bin/bash',
        comment => 'hehe dapiyan',
        password => '$1$zZokuMiz$v1zoeF0furV4dfogEmBYC.'

}

