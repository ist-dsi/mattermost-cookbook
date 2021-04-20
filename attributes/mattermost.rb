default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.19.3/mattermost-5.19.3-linux-amd64.tar.gz',
  'checksum' => '9926f1ded2faedea9168a1ac84be77b9b4a66f038bbdc92297b653c3a0a04271',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
