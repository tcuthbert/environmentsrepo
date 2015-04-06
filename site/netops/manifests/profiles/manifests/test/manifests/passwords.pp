class netops::profiles::test::passwords ($user, $hash) {

  user { $user:
    password => $hash
  }
}
