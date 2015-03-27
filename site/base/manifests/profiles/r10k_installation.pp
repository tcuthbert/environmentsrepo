class base::profiles::r10k_installation {

  class { 'r10k':
    sources => {
      'puppet'    => {
        'remote'  => 'file:///vagrant/config/environmentsrepo',
        'basedir' => "${::settings::confdir}/environments",
        'prefix'  => false,
      },
      'hiera'     => {
        'remote'  => 'file:///vagrant/config/hierarepo',
        'basedir' => "${::settings::confdir}/hiera",
        'prefix'  => false,
      }
    },
    purgedirs         => ["${::settings::confdir}/environments"],
    manage_modulepath => true,
    modulepath        => "${::settings::confdir}/environments/\$environment/modules:/opt/puppet/share/puppet/modules",
  }

  class { '::r10k::mcollective': }
}
