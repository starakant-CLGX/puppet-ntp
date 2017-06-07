
class ntp::params {

  $package_name	= 'ntp'
  $package_ensure = 'present'

  $config_name = 'ntp.conf'
  $config_file_mode = '0600'
  $servers = [ '0.pool.ntp.org', '1.pool.ntp.org', '2.pool.ntp.org' ]

  #$service_name	= 'ntp'
  $service_enable = true
  $service_ensure = 'running'
  $service_hasstatus = true
  $service_hasrestart = true

  $service_name	= $facts['os']['family'] ? {
    'Debian'  => 'ntp',
    'RedHat'  => 'ntpd',
    default	=> 'NONE',	
  }
}
