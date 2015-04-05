class netops::profiles::users {
  users { network_admins: }
  include users::paswwords
}
