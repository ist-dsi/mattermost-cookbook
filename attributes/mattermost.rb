default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.7.2/mattermost-5.7.2-linux-amd64.tar.gz',
  'checksum' => '88020d90c8b53d2dd0d1ea58e8ab1c47915178383578528bb96d8d0a60552ae0',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
