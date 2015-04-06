class netops::profiles::users (
  $users
){

  $names = split($users, "\ ")
  user { $names:
    ensure     => present,
    groups     => ['wheel'],
    managehome =>  true,
  }
}
