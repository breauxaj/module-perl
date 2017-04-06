node default {
  include ::perl

  case $::osfamily {
    'Debian': {
      perl::modules { 'libxs-object-magic-perl': }
    }
    'RedHat': {
      perl::modules { 'perl-libwww-perl': }  
    }
    default: { }
  }
}
