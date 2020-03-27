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

exec {'html page':
  provider => shell,
  command  => 'sudo echo "Holberton School" > /var/www/html/index.nginx-debian.html',
}

exec {'redirection':
  provider => shell,
  command  => 'redirect="location /redirect_me {\nrewrite ^/(.*)$ https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;\n}\n"\nsudo sed -i "30i $redirect" /etc/nginx/sites-available/default',
}

exec {'start':
  provider => shell,
  command  => 'service nginx start',
}
