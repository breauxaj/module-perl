define perl::modules (
  $name,
  $ensure = $::perl::params::perl_package_ensure
) {
  include ::perl

  package { $name:
    ensure  => $ensure,
  }
}