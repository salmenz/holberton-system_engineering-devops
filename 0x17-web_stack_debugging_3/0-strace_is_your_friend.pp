# Fix Apache error 500
exec { 'fix typo':
    cwd     => '/var/www/html/',
    command => '/bin/sed -i -e "s/.phpp/.php/g"  wp-settings.php',
}
