class profile::base {
  class { '::ntp': }
  class { 'profile::base::r10k_installation': }
}
