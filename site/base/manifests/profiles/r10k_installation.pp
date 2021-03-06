class base::profiles::r10k_installation {

  class { 'r10k':
    sources => {
      'puppet'    => {
        'remote'  => 'https://github.com/tcuthbert/environmentsrepo',
        'basedir' => "${::settings::confdir}/environments",
        'prefix'  => false,
      },
    },
    purgedirs         => ["${::settings::confdir}/environments"],
    manage_modulepath => true,
    modulepath        => "${::settings::confdir}/environments/\$environment/modules:/opt/puppet/share/puppet/modules",
  }

  class { '::r10k::mcollective': }
}
