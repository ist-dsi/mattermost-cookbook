default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.20.2/mattermost-5.20.2-linux-amd64.tar.gz',
  'checksum' => '20fc3fdbeee5f13371b29c2016a3d42d5a8edf8c2508b43b295dd39c6cd57c90',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
