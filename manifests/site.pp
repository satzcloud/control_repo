node default { 
    file {'/root/README':
      ensure => file,
      content => 'This is a Readme',
      owner   => root
   
    }
} 
node "ip-10-0-1-20.ap-south-1.compute.internal" { 
      include role::master_server 
      }
