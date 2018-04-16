default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.8.1/mattermost-4.8.1-linux-amd64.tar.gz',
  'checksum' => '3dac9f9bb4884cd83b8274c2bd7c32418f2535d3f9911cea845ac047ee2c7a82',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
