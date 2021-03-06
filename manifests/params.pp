# Class hiera::params
#
# Default parameters for hiera class
#
# == Parameters
#
#
# == Examples
#
# == Requires:
#
#
class hiera::params {

  $provider = 'gem'
  $hiera_package_name = 'hiera'
  $hiera_puppet_package_name = 'hiera-puppet'

  # Fail if the OS is not Ubuntu/Debian
  case $::operatingsystem {
    ubuntu, debian: {
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }

}
