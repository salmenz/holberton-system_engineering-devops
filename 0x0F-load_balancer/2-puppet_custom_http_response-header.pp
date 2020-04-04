# Install ngnix with puppet and configurate the server

exec {'updates':
  provider => shell,
  path     => '/usr/bin:/usr/sbin:/bin',
  command  => 'sudo apt-get -y update',
}

exec {'install':
  provider => shell,
  path     => '/usr/bin:/usr/sbin:/bin',
  command  => 'sudo apt-get -y install nginx',
}


exec {'redirection':
  provider => shell,
  command  => 'sudo sed -i "45 i\ \tadd_header X-Served-By ${cat /etc/hostname};\n" /etc/nginx/sites-enabled/default',
}

exec {'restart':
  provider => shell,
  command  => 'sudo service nginx restart',
}
