class logic::logiccreate ($fqdn='') {

	if $fqdn == 'node1' {
		
		file { '/root/logic.txt':
			ensure => present,
			content => 'only for node-1',
		}

	} 	

}
