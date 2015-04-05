class base::profiles::users::passwords {

  $tomspassword = hiera('user_tom_password')
  notice ("Tom's password is = ", $tomspassword)
  user { "tom":
    password => $tomspassword
  }
  $davespassword = hiera('user_dave_password')
  notice ("Dave's password is = ", $davespassword)
  user { "dave":
    password => $davespassword
  }
}
