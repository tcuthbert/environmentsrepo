class base::profiles::r10k_installation {
  require base::apps

  class { 'r10k':
    sources => {
      'puppet' => {
        'remote'  => 'file:///vagrant/config/environmentsrepo',
        'basedir' => "${::settings::confdir}/environments",
        'prefix'  => false,
      }
    },
    purgedirs         => ["${::settings::confdir}/environments"],
    manage_modulepath => true,
    modulepath        => "${::settings::confdir}/environments/\$environment/modules:/opt/puppet/share/puppet/modules",
  }

  class { '::r10k::mcollective': }
}
