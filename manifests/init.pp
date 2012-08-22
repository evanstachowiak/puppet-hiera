# Class hiera 
#
# Installs hiera
#
# == Parameters
#
#   [*ensure*]
#     Sets whether hiera is installed.
#     Default value: 'present'
#   [*package_name*]
#     Name of the hiera package
#     Default value: 'hiera'
#   [*provider*]
#     Provider to install hiera
#     Default value: 'gem'
#
# == Examples
#
#   class { 'hiera': }
#
# == Requires:
#
#
class hiera (
  $ensure       = 'present',
  $package_name = $hiera::params::hiera_package_name,
  $provider     = $hiera::params::provider
) inherits hiera::params {

  package { $package_name:
    ensure   => $ensure,
    provider => $provider,
  } 

}
