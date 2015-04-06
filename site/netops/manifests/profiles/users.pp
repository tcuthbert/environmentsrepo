class netops::profiles::users (
  $users
){

  $users = parsejson($users)
  user { $users:
    ensure     => present,
    groups     => ['wheel'],
    managehome =>  true,
  }
}
