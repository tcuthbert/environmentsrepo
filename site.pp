node /master-mid/ {
  include pe_repo::platform::el_6_x86_64
  include pe_repo
  class { puppet_enterprise::profile::master: 
    enable_ca_proxy => true
  }
  include puppet_enterprise::profile::mcollective::peadmin
  include puppet_enterprise::profile::master::mcollective
}

node default {
  hiera_include('classes')
}
