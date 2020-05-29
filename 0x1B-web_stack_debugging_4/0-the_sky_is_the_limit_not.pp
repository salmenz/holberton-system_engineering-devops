# Fix fails requests ngnix
exec {'fix fails requ':
path     => ['/usr/bin', '/bin'],
command  => "sudo sed -i 's/15/3000/g' /etc/default/nginx; sudo service nginx restart",
}
