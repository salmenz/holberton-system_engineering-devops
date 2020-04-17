#!/usr/bin/env bash
# Install ngnix with puppet and configurate the server

exec {'http_header':
command  => 'sudo apt-get -y update && 
             sudo apt-get -y install nginx && 
             sudo sed -i "36i \\\tadd_header X-Served-By \$hostname;\n" /etc/nginx/sites-enabled/default &&
             sudo service nginx restart',
provider => shell,
}
