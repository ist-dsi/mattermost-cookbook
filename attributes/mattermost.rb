default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.7.0/mattermost-5.7.0-linux-amd64.tar.gz',
  'checksum' => '1220e25f501e41db9bee6af14dd12583c1f95658a55862da42a1268d160b10c4',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
