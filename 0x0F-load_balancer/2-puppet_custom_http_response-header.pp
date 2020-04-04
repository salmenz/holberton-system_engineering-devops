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
  command  => 'sudo sed -i "36 i\ \tadd_header X-Served-By {$hostname};\n" /etc/nginx/sites-enabled/default',
}

exec {'start':
  provider => shell,
  command  => 'service nginx start',
}
