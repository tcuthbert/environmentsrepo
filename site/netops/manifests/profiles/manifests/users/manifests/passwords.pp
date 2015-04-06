class netops::profiles::users::passwords ($hash) {

  user { 'tom':
    password => hash
  }
}
