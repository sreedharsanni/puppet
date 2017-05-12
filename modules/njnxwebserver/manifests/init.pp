# Class: njnxwebserver
# ===========================
#
# Full description of class njnxwebserver here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'njnxwebserver':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class njnxwebserver {

	service { 'nginx':
		ensure => running,
		enable => true,
		require => Package['nginx'],
	}

	$fqdn = $facts['hostname']
	
	if $fqdn == 'node1' {
		$environment = 'PROD'	
	}
	elsif $fqdn == 'node2' {
		$environment = 'DEV'
	}
	 

	file { '/usr/share/nginx/html/index.html':
		ensure => 'present',
		content => " This is ${ fqdn } and is ${ environment } ",
	}
	package { 'nginx':
		ensure => installed,
	}

}
