class base::profiles::ntp {
  if $::osfamily != 'windows' {
    class { '::ntp': }
  }
}
