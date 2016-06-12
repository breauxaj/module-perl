# Class: perl
#
# This class installs the perl package
#
# Parameters:
#
#  ensure: (default latest)
#    Determine the state of the packages
#
# Actions:
#   - Installs the perl package
#
# Sample Usage:
#
#  For a standard installation, use:
#
#    class { 'perl':
#      ensure => 'latest'
#    }
#
#  To remove the installation, use:
#
#    class { 'perl':
#      ensure => 'absent'
#    }
#
class perl (
  $ensure = $::perl::params::perl_package_ensure
) inherits ::perl::params {
  package { $::perl::params::perl_package:
    ensure  => $ensure,
  }

  $perl_modules = hiera('perl',[])
  create_resources('perl::modules',$perl_modules)
}
