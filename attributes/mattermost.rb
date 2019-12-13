default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.16.3/mattermost-5.16.3-linux-amd64.tar.gz',
  'checksum' => 'b564a480e56112925289c413dbdd2d8d66b6b98fad64d659f43e9a16a6fcf1a7',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
