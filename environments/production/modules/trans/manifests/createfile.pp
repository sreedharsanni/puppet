class trans::createfile {
	file { '/etc/puppetlabs/code/environments/production/modules/trans/files/transfer.txt':
		ensure => present,
		content => "content to transfer",
	}
}
