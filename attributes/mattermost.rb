default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.8.0/mattermost-5.8.0-linux-amd64.tar.gz',
  'checksum' => 'f95c438c81171f6929c0f2438c358b7e1ccbd343546b2b3e75a5f9d14b0242cd',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
