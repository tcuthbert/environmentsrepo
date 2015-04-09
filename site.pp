node /master/ {

  include base::profiles::r10k_installation
}

node default {
  hiera_include('classes')
}
