class secops::profiles::users ( 
  $users
){
  define secops::profiles::initpasswd {
    $eof = "<<EOF\r\nP@ssw0rd1\r\nP@ssw0rd1\r\nEOF"
    exec { "initialise ${name}'s passwd":
      command => "passwd -f ${name} ${eof}",
      path => ['/usr/bin', '/bin', '/sbin']
    }
  }

  $names = split($users, "\ ")
  user { $names:
    ensure     => present,
    groups     => ['wheel'],
    managehome => true,
  } ->
  secops::profiles::initpasswd {$names:}
}
