default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.0.1/mattermost-5.0.1-linux-amd64.tar.gz',
  'checksum' => '91f709a167a42f0f388e923737d1e0c9f19b3950c5c29e683d59b0fef1bf0ce6',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
