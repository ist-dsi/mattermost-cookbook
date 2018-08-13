default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.1.1/mattermost-5.1.1-linux-amd64.tar.gz',
  'checksum' => '18ab8f43ebd2652cba946e0430399ed15e10ef44a3aca88e4467ea55da265ef4',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
