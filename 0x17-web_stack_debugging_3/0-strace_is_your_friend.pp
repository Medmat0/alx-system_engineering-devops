# Puppet manifest to fix Apache 500 error issue
# Fixing permissions on Wordpress directory

file { '/var/www/html':
  ensure => directory,
  owner  => 'www-data',
  group  => 'www-data',
  recurse => true,
}

service { 'apache2':
  ensure  => running,
  enable  => true,
  require => File['/var/www/html'],
}
