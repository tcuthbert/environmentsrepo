class base::profiles::redis_installation {

  package { 'hiera-redis':
    provider => 'gem'
  }
  class {'redis':} ->
  exec { "add_tom":
    command => "/opt/redis-src/src/redis-cli set common:users_security_admins:tom:password 'green'",
  } ->
  exec { "add_dave":
    command => "/opt/redis-src/src/redis-cli set common:users_security_admins:dave:password 'green'",
  }
}
