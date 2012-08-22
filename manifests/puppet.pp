# Class hiera::puppet
#
# Installs hiera-puppet
#
# == Parameters
#
#   [*ensure*]
#     Sets whether hiera is installed.
#     Default value: 'present'
#   [*package_name*]
#     Name of the hiera-puppet package
#     Default value: 'hiera-puppet'
#   [*provider*]
#     Provider to install hiera-puppet
#     Default value: 'gem'
#
# == Examples
#
#   class { 'hiera::puppet': }
#
# == Requires:
#
#   class { 'hiera': }
#
class hiera::puppet (
  $ensure       = 'present',
  $package_name = $hiera::params::hiera_puppet_package_name,
  $provider     = $hiera::params::provider
) inherits hiera::params {

  Class['hiera'] -> Class['hiera::puppet']
  include hiera

  package { $hiera_puppet_package:
    ensure   => $ensure,
    provider => $provider,
  } 

}
