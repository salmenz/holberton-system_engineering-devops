# Fix fails requests ngnix
exec { 'fix fails requests ngnix':
  command => "sudo sed -i 's/15/3000/g'  /etc/default/nginx;  sudo service nginx restart",
  path    => ['/bin', '/usr/bin', '/usr/sbin']
}
