# Class: users
# ===========================
#
# Full description of class users here.
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
#    class { 'users':
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
class users {

	$usrs = ['user1','user2','user3']
	$name = "sreedhar"
	$usrs.each |$usr| {
		user { "${ usr }":
			ensure => present,
			password => '$6$Ytav32QC$VElE3JLfuUjTBwTmqK4DzDC1xYJ.AW6viS0qTdMoEu/DYS05bw4fj1KPy12WZbwkI6/UDjzK8Wnt9wrQFQDk6/',
		}
	}
	$name = "sannidhanam"

}
