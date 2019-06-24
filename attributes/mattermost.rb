default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.12.0/mattermost-5.12.0-linux-amd64.tar.gz',
  'checksum' => 'ce4b1b182e12ca499ba3e1a115f7635e0747430b741b3e10b4de54b8bcbfdfd7',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
