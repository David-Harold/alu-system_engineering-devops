# Fixes the Apache 500 error: wp-settings.php requires a file with a mistyped ".phpp" extension
exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/:/usr/bin/',
}
