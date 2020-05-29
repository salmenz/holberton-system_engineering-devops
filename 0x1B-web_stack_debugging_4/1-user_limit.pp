# Change the OS configuration
exec { 'Hard':
  path    => ['/bin', '/usr/bin'],
  command  => 'sudo sed -i \'s/nofile 5/nofile 30000/\' /etc/security/limits.conf',
  provider => shell,
}
exec { 'Soft':
  path    => ['/bin', '/usr/bin'],
  command  => 'sudo sed -i \'s/nofile 4/nofile 10000/\' /etc/security/limits.conf',
  provider => shell,
}
