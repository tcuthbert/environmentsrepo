class netops::profiles::users (
  $users
){
  define netops::profiles::initpasswd {
    $eof = "<<EOF\nP@ssw0rd1\nP@ssw0rd1\nEOF"
    exec { "initialise ${name}'s passwd":
      command => "passwd -f ${name} ${eof}",
      path => ['/usr/bin', '/bin', '/sbin'],
      subscribe => User[$name],
      refreshonly => true
    }
  }

  $names = split($users, "\ ")
  user { $names:
    ensure     => present,
    groups     => ['wheel', 'network'],
    managehome => true,
  } ->
  netops::profiles::initpasswd {$names:}
}
