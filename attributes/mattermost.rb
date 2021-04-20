default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.24.3/mattermost-5.24.3-linux-amd64.tar.gz',
  'checksum' => '1a9a3200a3de242b4461df7bf58ff131ebf730cc242d7515ce101ad880b37fb8',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
