default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.7.2/mattermost-4.7.2-linux-amd64.tar.gz',
  'checksum' => '947577631a94a003d660b4eb08f07585e0e1f93c3e5b63a8c30a72e0abcde9c1',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
