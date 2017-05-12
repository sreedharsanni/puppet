class variablescope::test ($variable='') {
#	$variable = "test class"
	file { '/root/variablescope.txt':
		ensure => present,
		content => "Iam $::variable",
	}
}
