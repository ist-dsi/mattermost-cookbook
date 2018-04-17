default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.9.0/mattermost-4.9.0-linux-amd64.tar.gz',
  'checksum' => '484cdaec10a854366390d257f905279d66fe19f301c6a3065381773530ecaa5d',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
