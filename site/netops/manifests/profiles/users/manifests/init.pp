class netops::profiles::users {
  #users { network_admins: }
  $users = [
    "tom",
    "dave",
    "someguy"
  ]

  user { 'network_admins':
    name       => $users,
    ensure     => present,
    groups     => ['wheel'],
    managehome => true,
  }
  #include users::passwords
}
