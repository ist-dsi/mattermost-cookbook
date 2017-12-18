default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.5.0/mattermost-4.5.0-linux-amd64.tar.gz',
  'checksum' => 'a3af246f160aaf06ce9706a566222a4470c9ec364ce1861492f35dc0a03f1360',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
