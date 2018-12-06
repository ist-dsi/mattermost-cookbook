default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/5.5.1/mattermost-5.5.1-linux-amd64.tar.gz',
  'checksum' => '16a4a0813aedb66bb3c7edf63f691061f98d26d749da38a3b44a99eaeddde74f',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
