# Raises nginx's open-file limit (ULIMIT was 15) so it can serve heavy concurrent traffic
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/:/usr/bin/',
}

-> exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/',
}
