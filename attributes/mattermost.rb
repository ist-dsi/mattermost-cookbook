default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.15.1/mattermost-5.15.1-linux-amd64.tar.gz',
  'checksum' => 'ebc868babd2bbc129dc58e8dcaff93915cdd8c684e31e162ae8cd4d6514cc30e',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
