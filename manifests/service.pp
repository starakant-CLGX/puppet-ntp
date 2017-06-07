
class ntp::service (
  String $service_name		= $ntp::service_name,
  String $service_ensure	= $ntp::service_ensure,
  Boolean $service_enable	= $ntp::service_enable,
  Boolean $service_hasstatus	= $ntp::service_hasstatus,
  Boolean $server_hasrestart	= $ntp::service_hasrestart,
) {

  service { "$service_name":
    ensure	=> $service_ensure,
    enable	=> $service_enable,
    name	=> $service_name,
    hasstatus	=> $service_hasstatus,
    hasrestart	=> $service_hasrestart,
  }

}
