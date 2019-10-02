default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.14.3/mattermost-5.14.3-linux-amd64.tar.gz',
  'checksum' => '6b8a17b47472284366db8e55a1f87cffa5b548dde6e74f1cf306a879c43898eb',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
