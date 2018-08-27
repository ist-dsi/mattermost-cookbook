default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.2.1/mattermost-5.2.1-linux-amd64.tar.gz',
  'checksum' => '7acd675f3975a27a2d42b9244637947390481644ebb1860ab5a36882450a8fbc',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
