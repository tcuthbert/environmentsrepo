node /master/ {
	hiera_include('master_classes')
}

node default {
  hiera_include('classes')
}
