class webserver::transfer {
	file {'/usr/share/nginx/html/index.html':
#		source => 'puppet:///modules/webserver/index.html',
		content => template ('webserver/index.erb'),
	}
}
