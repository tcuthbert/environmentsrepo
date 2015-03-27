class profile::base {
  class { '::ntp': }
  class { 'r10k_installation': }
}
