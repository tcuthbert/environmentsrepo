class netops::profiles::users::admins (
  $users
){

  $names = split($users, "\ ")
  user { $names:
    ensure     => present,
    groups     => ['wheel'],
    managehome =>  true,
  }
}
