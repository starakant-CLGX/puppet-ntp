
class ntp::config (
  String $config_name		= $ntp::config_name,
  String $config_file_mode	= $ntp::config_file_mode,
  Array[String] $servers	= $ntp::servers,
) {
  
  file { "/etc/${config_name}":
    ensure	=> file,
    mode	=> $config_file_mode,
    owner	=> root,
    content	=> template("$module_name/${config_name}.erb"), 
  }

}
