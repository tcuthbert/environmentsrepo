class netops::profiles::users (
  $users
){

  user { $users:
    ensure     => present,
    groups     => ['wheel'],
    managehome =>  true,
  }
}
