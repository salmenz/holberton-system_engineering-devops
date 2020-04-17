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
  command  => ''sed -i -e "/sendfile/i \\\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf',
}

exec {'restart':
  provider => shell,
  command  => 'sudo service nginx restart',
}
