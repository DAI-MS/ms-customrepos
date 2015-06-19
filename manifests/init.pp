#JVirdee 
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class customrepos {
$repos = [ 'test1.repo', 'test2.repo', 'test3.repo', ]

	file { "/etc/yum.repos.d":
		ensure => directory,
		mode => '0755',
		owner => 'root',
		group => 'root',
	}
	
	file { "/etc/yum.repos.d/$repos":
		ensure => present,
		mode => '0644',
		owner => 'root',
		group => 'root',
		source => "puppet:///extra_files/$repos"
	}	
}
