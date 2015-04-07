class netops::profiles::users (
  $users
){
  define netops::profiles::initpasswd {
    $eof = "<<EOF\r\nP@ssw0rd1\r\nP@ssw0rd1\r\nEOF"
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
    groups     => ['wheel'],
    managehome => true,
  } ->
  netops::profiles::initpasswd {$names:}
}
