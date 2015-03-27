node /^master.*$/ {
  hiera_include('classes')
}

node default {}
