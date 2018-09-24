default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.3.1/mattermost-5.3.1-linux-amd64.tar.gz',
  'checksum' => 'ebe59b38f0c7c1bed2dd94c0f5c64858dd316347418196199d871417747dcf97',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
