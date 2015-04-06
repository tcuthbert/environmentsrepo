class netops::profiles::users (
  $users
){

  define createuser {
    user { $name:
      ensure     => present,
      groups     => ['wheel'],
      managehome =>  true,
    }
  }

  createuser{$users:}
}
