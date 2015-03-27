class profile::base {
  class { '::ntp': }
  #class { '::r10k': }
  class { '::r10k::mcollective': }
}
