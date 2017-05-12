class webserver::installnginx {
	package { 'nginx':
		ensure => installed,
	}
}

