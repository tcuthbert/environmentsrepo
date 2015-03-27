class { 'r10k':
  sources => {
    'puppet' => {
      'remote'  => 'ssh://root@master-top/vagrant/config/environmentsrepo',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    }
  },
  purgedirs         => ["${::settings::confdir}/environments"],
  manage_modulepath => true,
  modulepath        => "${::settings::confdir}/environments/\$environment/modules:/opt/puppet/share/puppet/modules",
}

