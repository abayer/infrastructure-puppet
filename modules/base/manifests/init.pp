#/usr/local/etc/puppet/modules/base/manifests/init.pp

class base (
  $basepackages  = '',
  $pkgprovider = '',
) {


  package { $basepackages: 
    ensure   =>  installed,
  }


  class { "base::install::${asfosname}::${asfosrelease}":
  }
}


# to instantiate defined types (like snmpv3_user) via hiera we need to use
# create_resources to iterate across the hash

class base::snmp::createv3users {
  $v3userhash = hiera_hash('snmp::snmpv3_user',{})
  create_resources(snmp::snmpv3_user, $v3userhash)
}

