class netops::profiles::users::passwords ($user, $hash) {

  user { $user:
    password => hash
  }
}
