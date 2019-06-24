default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.11.1/mattermost-5.11.1-linux-amd64.tar.gz',
  'checksum' => 'df1615d9c3bfe25c8d9dbad201e5f938bd40daaf93701d3954638212fb54425d',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
