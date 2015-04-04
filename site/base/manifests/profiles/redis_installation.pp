class base::profiles::redis_installation {

  class {'redis':} ->
  exec { "add_tom":
    command => "/opt/redis-src/src/redis-cli set user_top_password 'green'",
  } ->
  exec { "add_dave":
    command => "/opt/redis-src/src/redis-cli set user_dave_password 'green'",
  }
}
