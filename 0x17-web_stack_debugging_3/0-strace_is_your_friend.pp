# Puppet manifest to fix Apache 500 error issue
# Fixing permissions on Wordpress directory
# Fix 500 error when a GET HTTP method is requested to Apache web server

exec {'replace':
  provider => shell,
  command  => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php'
}
