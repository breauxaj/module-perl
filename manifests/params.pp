# Class: perl::params
#
# This class sets parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#
class perl::params {
  $perl_package_ensure = 'latest'

  case $::osfamily {
    'Debian': {
      $perl_package = 'perl-base'
    }
    'RedHat': {
      $perl_package = 'perl'
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }
}