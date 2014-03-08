#
# = Ressource: yamlout
#
# This class installs and manages zookeeper
#
#
# == Parameters
#
# [ensure]          : whether the file should be installed or not, possible values are present, absent
# [confighash]      : hash to write to yaml file
# [owner]           : user of the output file (optional)
# [group]           : group of the output file (optional)
# [mode]            : mode of the output file (optional)
#

define yamlout (
    $ensure     = present,
    $filename	= $name,
    $data,
    $owner      = undef,
    $group      = undef,
    $mode       = undef,
){
  file {"${filename}":
    ensure          => $ensure,
	content         => inline_template('<%= @data.to_yaml %>'),
    owner           => $owner,
    group           => $group,
    mode            => $mode,
  }
}	
