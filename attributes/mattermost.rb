default['mattermost']['package'] = {
  'url' => 'https://releases.mattermost.com/4.7.3/mattermost-4.7.3-linux-amd64.tar.gz',
  'checksum' => '09a728ad189d2cf315d664fed7caf68fbf9af60f85e2619d308b5345e576293c',
}

default['mattermost']['config'] = {
  'install_path' => '/opt',
  'user' => 'mattermost',
  'group' => 'mattermost',
  'data_dir' => '/opt/mattermost/data',
  'server_name' => 'localhost',
}

default['mattermost']['systemd']['after'] = %w( syslog.target network.target )
