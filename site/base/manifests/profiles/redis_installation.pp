class base::profiles::redis_installation {

  package { 'hiera-redis':
    provider => 'gem'
  }
  class {'redis':} ->
  exec { "add_tom":
    command => "/opt/redis-src/src/redis-cli set common:users_tom_password 'green'",
  } ->
  exec { "add_dave":
    command => "/opt/redis-src/src/redis-cli set common:users_dave_password 'green'",
  }
}
