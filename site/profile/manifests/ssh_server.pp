class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDL40zkwhj8xFgByQD0DhHIhrHntG7wIQEfzSTHyLmNByYTjqySn5WjuIxPz0rcVFPlfu8G5by45q0ImXxLcrpUqsanQ6sX93Pg3xoTf6Q8nMJ7CbFCU4A420DS3+60PUyJoG5J+Kf8YArbf04dGFOAKRFDrle41UwQmnP3ZHllQ+AF6Ka8zCsumNrKvbsbkngZjdJKesFWtS8OTL8EIlEpv8+e3U4O6JPj1NUhDZArtG6mbbDlfoMrqjR0uuNctixvOY3DJyRpT5Gg9rKgG7I0SayoSx+8VMnj9KnHuTbJoUXgMoW/N2cZw6iCMpfVVE6BHouBvLHmVq6O4HjLnEHJ',
	}
}
