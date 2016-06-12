define perl::modules (
  $value
) {
  include ::perl

  package { $name:
    ensure  => $::perl::params::perl_package_ensure,
  }
}