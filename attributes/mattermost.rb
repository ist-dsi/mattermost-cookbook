default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.25.7/mattermost-5.25.7-linux-amd64.tar.gz',
  'checksum' => '89048fc2b4d4930927e4b92a508d8db3628d05059c7f271caffd05d9b50136c8',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
