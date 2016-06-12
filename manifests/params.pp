# Class: perl::params
#
# This class sets parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#
class perl::params {
  $perl_package_ensure = 'latest'

  case $::operatingsystem {
    'Amazon', 'CentOS', 'OracleLinux', 'RedHat': {
      $perl_package = 'perl'
    }
    'Debian': {
      $perl_package = 'perl-base'
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }
}