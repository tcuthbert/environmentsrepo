class netops::profiles::users (
  $users
){

  $names = split($users, "\ ")
  user { $names:
    ensure     => present,
    password   => hiera("users_tom_password"),
    groups     => ['wheel'],
    managehome => true,
  }
}
