default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.11.1/mattermost-5.11.1-linux-amd64.tar.gz',
  'checksum' => 'ad2db1a68103fb3ce9383f857eddc817848d548334b510b2dd2491f13f59ea4d',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
