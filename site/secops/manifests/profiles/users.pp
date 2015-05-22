class secops::profiles::users (
  $users
){
  define secops::profiles::initpasswd {
    $eof = "<<EOF\nP@ssw0rd1\nP@ssw0rd1\nEOF"
    exec { "initialise ${name}'s passwd":
      command => "passwd -f ${name} ${eof}",
      path => ['/usr/bin', '/bin', '/sbin'],
      subscribe => User[$name],
      refreshonly => true
    }
  }

  $names = split($users, "\ ") ->
  group {'security':
    ensure => present
  } ->
  user { $names:
    ensure     => present,
    groups     => ['wheel', 'security'],
    managehome => true,
  } ->
  secops::profiles::initpasswd {$names:}
}

