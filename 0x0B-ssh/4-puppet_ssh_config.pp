# set up your client SSH configuration file so that you can connect to a server without typing a password.
exec { 'echo "IdentityFile ~/.ssh/holberton\nPasswordAuthentication no" >> /etc/ssh/ssh_config':
  path  => '/bin/'
}
