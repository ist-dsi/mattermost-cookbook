default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.23.2/mattermost-5.23.2-linux-amd64.tar.gz',
  'checksum' => 'a36f8de7fdc1b12c1b2b1a841e43a5f0604845b1c2bd4cff9318786964fcefae',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
