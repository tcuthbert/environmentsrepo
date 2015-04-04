class netops::profiles::users {
  users { network_admins: }

  user { "tom":
    password => hiera('user_tom_password')
  }
}
