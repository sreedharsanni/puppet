class trans::transfer {
	file { '/root/transfered.txt':
	source => 'puppet:///modules/trans/transfer.txt',
	}
}
