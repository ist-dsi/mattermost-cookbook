default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.21.0/mattermost-5.21.0-linux-amd64.tar.gz',
  'checksum' => '909b17498139cd511d4e5483e2b7be0b757ac28ea5063be9c3d82cbe49b4a696',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
