default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.1.0/mattermost-5.1.0-linux-amd64.tar.gz',
  'checksum' => '7f14412231a852fb307ff0bea9f67dcbc862da9901d55d91d7838b092db6a5ae',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
