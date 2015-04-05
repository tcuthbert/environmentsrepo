class base::profiles::users::passwords {

  $tomspassword = hiera('users_tom_password')
  notice ("Tom's password is = %{$tomspassword}")
  user { "tom":
    password => $tomspassword
  }
  $davespassword = hiera('users_dave_password')
  notice ("Dave's password is = %{$davespassword}")
  user { "dave":
    password => $davespassword
  }
}
