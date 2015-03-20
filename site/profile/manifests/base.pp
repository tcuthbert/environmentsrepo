class profile::base {
  class { '::ntp': }
  class { '::sudo': }
}
